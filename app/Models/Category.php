<?php

namespace App\Models;

use TypiCMS\NestableTrait;
use App\Models\Subcategory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Category extends Model
{
    use HasFactory;
    // use NestableTrait;
    protected $table = 'categories';

    protected $fillable = [
        'name', 'slug', 'menu',
    ];

    protected $casts = [
        'parent_id' =>  'integer',
        'menu'      =>  'boolean'
    ];



    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     */
    public function products()
    {
        return $this->belongsToMany(Product::class);
    }
}
