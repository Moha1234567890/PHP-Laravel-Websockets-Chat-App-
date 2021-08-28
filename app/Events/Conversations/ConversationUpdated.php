<?php

namespace App\Events\Conversations;

use Illuminate\Broadcasting\Channel;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Broadcasting\PresenceChannel;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;
use App\Models\User;

class ConversationUpdated
{
    use Dispatchable, InteractsWithSockets, SerializesModels;
    public $conversation;
    /**
     * Create a new event instance.
     *
     * @return void
     */
    public function __construct(Conversation $conversation)
    {
        $this->conversation = $conversation;
    }

    public function broadcastWith() {
        return [
                'conversation' => [
                    'id' => $this->conversation->id
                ]
            ];
    }

    /**
     * Get the channels the event should broadcast on.
     *
     * @return \Illuminate\Broadcasting\Channel|array
     */
    public function broadcastOn()
    {
        return $this->conversation->users->map(function ($user) {
            return new PrivateChannel('User.' . $this->user->id);

        })->toArray();
    }
}
