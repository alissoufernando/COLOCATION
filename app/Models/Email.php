<?php

namespace App\Models;

use App\Models\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Email extends Model
{
    use HasFactory;
    protected $fillable = [
        'sujet', 'receveur', 'product_id', 'message','user_id','envoye'
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
