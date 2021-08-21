<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Conversation;
use App\Models\User;
use Illuminate\Support\Str;
//use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {

        User::create([
                'name' => 'Sami',
                'email' => 'sami@gmail.com',
                'email_verified_at' => now(),
                'password' => bcrypt('123123123'),
                'remember_token' => Str::random(10),
        ]);

        User::create([
            'name' => 'Mansour',
            'email' => 'mansour@gmail.com',
            'email_verified_at' => now(),
            'password' => bcrypt('123123123'),
            'remember_token' => Str::random(10),
        ]);
        


        Conversation::create([
            'name'   => 'family',
            'uuid' => Str::uuid(),
            'user_id' => 1,
            
        ]);


        
        Conversation::create([
            'name'   => 'friends',
            'uuid' => Str::uuid(),
            'user_id' => rand(1, 4),
            
        ]);

        
        Conversation::create([
            'name'   => 'work',
            'uuid' => Str::uuid(),
            'user_id' => rand(1, 4),
            
        ]);
    }
}
