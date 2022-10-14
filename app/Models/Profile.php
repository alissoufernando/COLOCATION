<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Profile extends Model
{
    use HasFactory;
    protected $fillable = [
        'name',
        'user_id',
        'email',
        'phone',
        'link_facebook',
        'link_twitter',
        'link_instagram',
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
