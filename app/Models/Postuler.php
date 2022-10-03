<?php

namespace App\Models;

use App\Models\User;
use App\Models\Product;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Postuler extends Model
{
    use HasFactory;
    protected $table= 'postulers';
    protected $fillable = [
        'indetermine', 'date_entre', 'date_de_sortie', 'reponse', 'user_id', 'product_id'
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
    public function product()
    {
        return $this->belongsTo(Product::class);
    }
}

