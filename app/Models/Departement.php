<?php

namespace App\Models;

use App\Models\Ville;
use App\Models\Product;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Departement extends Model
{
    use HasFactory;
    protected $table = 'departements';
    protected $fillable = [
        'name'
    ];
    public function villes()
    {
        return $this->hasMany(Ville::class);
    }

    public function product()
    {
        return $this->belongsTo(Product::class);
    }
}
