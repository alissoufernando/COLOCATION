<?php

namespace App\Models;

use id;
use App\Models\User;
use App\Models\Review;
use App\Models\Postuler;
use App\Models\Affectation;
use App\Models\Subcategory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Product extends Model
{
    use HasFactory;
    /**
     * @var string
     */
    protected $table = 'products';

    /**
     * @var array
     */
    protected $fillable = [
        'departement', 'commune', 'name',
        'slug', 'short_description', 'description', 'disponibilite', 'normal_price','place_dispo','type_annonce','ville','categorie_id','user_id'
    ];

    /**
     * @var array
     */
    protected $casts = [
        'quantity'  =>  'integer',
        'brand_id'  =>  'integer',
        'status'    =>  'boolean',
        'featured'  =>  'boolean'
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function images()
    {
        return $this->hasMany(ProductImage::class);
    }
    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     */
    public function categorie()
    {
        return $this->belongsTo(Category::class);
    }
    public function affectation()
    {
        return $this->belongsTo(Affectation::class);
    }
    public function postulers()
    {
        return $this->hasMany(Postuler::class);
    }
    public function user()
    {
        return $this->belongsTo(User::class);
    }
    public function reviews()
    {
        return $this->hasMany(Review::class);
    }

}
