<?php

namespace App\Models;

use App\Models\Product;
use App\Models\Departement;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Ville extends Model
{
    use HasFactory;
    protected $table = 'villes';
    protected $fillable = [
        'name','departement_id'
    ];
    public function departement()
    {
        return $this->belongsTo(Departement::class);
    }

    public function product()
    {
        return $this->belongsTo(Product::class);
    }
}
