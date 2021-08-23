<?php

namespace App\Http\Livewire\Conversations;

use Livewire\Component;

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

    public function replay() {
     
    }

    public function render()
    {
        return view('livewire.conversations.conversation-message-replay');
    }
}
