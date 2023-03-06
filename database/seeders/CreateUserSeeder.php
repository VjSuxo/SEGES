<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;

class CreateUserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //0 = admin, 1 = user, 2 = controlador, 3 = expositor
        $users = [
            [
               'name'=>'Admin',
               'email'=>'admin@seges.com',
               'role'=> 0,
               'password'=> bcrypt('123456'),
            ],
            [
               'name'=>'User',
               'email'=>'user@seges.com',
               'role'=> 1,
               'password'=> bcrypt('123456'),
            ],
            [
               'name'=>'controlador',
               'email'=>'controlador@seges.com',
               'role'=> 2,
               'password'=> bcrypt('123456'),
            ],
            [
                'name'=>'Expositor',
                'email'=>'expositor@seges.com',
                'role'=> 3,
                'password'=> bcrypt('123456'),
             ],

        ];

        foreach ($users as $key => $user)
        {
            User::create($user);
        }
    }
}
