<?php

namespace App\Service;

use App\Models\User;
use Illuminate\Support\Str;

class UserMessage
{


    public static function rechercherUserNameMessage(string $name): array
    {
        return collect(self::userChats())->filter(fn($userChat) => Str::contains(strtolower($userChat->name), strtolower($name)))->all();
    }

    public static function userChats()
    {
        $users = User::all();
        return $users;
    }
}
