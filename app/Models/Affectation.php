<?php

namespace App\Models;

use App\Models\Product;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Affectation extends Model
{
    use HasFactory;
    protected $fillable = [
        'product_id','user_id'
    ];

    public function product()
    {
        return $this->belongsTo(Product::class);
    }
}
