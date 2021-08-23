<?php

namespace App\Http\Livewire\Conversations;
use App\Models\Conversation;

use Livewire\Component;

class ConversationMessages extends Component
{

    public $conversation;
    public $messages;

    public function mout(Conversation $conversation, Collection $messages) {
        $this->conversation = $conversation;
        $this->messages = $messages;
    } 

    public function render()
    {
        return view('livewire.conversations.conversation-messages');
    }
}
