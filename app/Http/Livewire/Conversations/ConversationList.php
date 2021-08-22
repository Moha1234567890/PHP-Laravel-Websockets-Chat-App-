<?php

namespace App\Http\Livewire\Conversations;

use Livewire\Component;

class ConversationList extends Component
{

    public $conversations;


    public function conversations(Collection $conversations) {
        $this->$conversations = $conversations;
    }


    public function render()
    {
        return view('livewire.conversations.conversation-list');
    }
}
