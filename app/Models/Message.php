<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\User;
use App\Models\Conversation;

class Message extends Model
{
    use HasFactory;

    protected $guarded = [];

    public function conversation() {
        return $this->belongsTo(Conversation::class);
    }

    public function users() {
        return $this->belongsTo(User::class);
    }
}
