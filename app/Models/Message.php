<?php

namespace App\Models;

use App\Models\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Message extends Model
{
    use HasFactory;
    protected $table= 'messages';
    protected $fillable = [
        'message', 'destinataire_id', 'auteur_id'
    ];
    public function auteurs()
    {
        return $this->belongsTo(User::class, 'auteur_id');
    }
    public function destinataires()
    {
        return $this->belongsToMany(User::class, 'distinataire_id');
    }
}
