<?php

namespace App\Http\Livewire\Conversations;
use Livewire\WithFileUploads;
use App\Models\Conversation;
use Livewire\Component;
use App\Events\Conversation\MessageAdded;

class ConversationMessageReplay extends Component
{

    use withFileUploads;

    public $body = "";
    public $attachment_name = "";
    public $attachment = "";
    public $conversation;


    public function mount(Conversation $conversation) {
        $this->conversation = $conversation;
    }

    protected $rules = [
        'body' => 'required',
        'attachment' => 'nullable|file|mimes:png,jpg,jpeg,gif,wav,mp3,mp4|max:102400',
    ];


    public function replay() {
     

        if($this->attachment != '') {
            $this->attachment_name = md5($this->attachment . microtime())
            . '.' . $this->attachment->extension();

            $this->attachment->storeAs('/', $this->attachment_name, 'media');
            $data['attachment'] = $this->attachment_name;
        }

        $data['body'] = $this->body;
        $data['user_id'] = auth()->id();


        $message = $this->conversation->messages()->create($data);

        $this->conversation->update([
            'last_message_at' => now(),

        ]);

        foreach($this->conversation->others as $user) {
            
            $user->conversations()->updateExistingPivot($this->conversation, [
                'read_at' => null
            ]);
        }

        broadcast(new MessageAdded($message))->toOthers;

        $this->emit('message.created', $message->id);



        $this->body = "";
        $this->attachment = "";
        $this->attachment_name = "";
    }

    public function render()
    {
        return view('livewire.conversations.conversation-message-replay');
    }
}
