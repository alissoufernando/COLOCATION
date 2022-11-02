<?php

namespace App\Models;

use App\Models\Role;
use App\Models\Email;
use App\Models\Message;
use App\Models\Product;
use App\Models\Profile;
use App\Models\Postuler;
use App\Models\ImageUser;
use App\Models\Newsletter;
use App\Models\Affectation;
use Laravel\Sanctum\HasApiTokens;
use Laravel\Jetstream\HasProfilePhoto;
use Spatie\Permission\Traits\HasRoles;
use Illuminate\Notifications\Notifiable;
use Laravel\Fortify\TwoFactorAuthenticatable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use HasApiTokens;
    use HasFactory;
    use HasProfilePhoto;
    use Notifiable;
    use TwoFactorAuthenticatable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [

        'name', 'firstname','phone', 'email','phone_whatsapp', 'password', 'last_seen',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password',
        'remember_token',
        'two_factor_recovery_codes',
        'two_factor_secret',
    ];
    /**
     * The attributes that should be mutated to dates.
     *
     * @var array
     */
    protected $dates = [
        'last_seen',
    ];


    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    /**
     * The accessors to append to the model's array form.
     *
     * @var array
     */
    protected $appends = [
        'profile_photo_url',
    ];

    /**
     * @return string
     */
    public function getFullNameAttribute()
    {
        return $this->firstname . ' ' . $this->name;
    }

    public function roles()
    {
        return $this->belongsToMany(Role::class);
    }

    public function addresses()
    {
        return $this->hasMany(Address::class);
    }

    public function profile()
    {
        return $this->hasOne(Profile::class);
    }

    public function isAdmin()
    {
        return $this->roles()->where('nom', 'Administrateur')->first();
    }

    public function isSuperAdmin()
    {
        return $this->roles()->where('nom', "Super Administrateur")->first();
    }
    public function isetudiant()
    {
        return $this->roles()->where('nom', "Etudiant")->first();
    }

    public function affectation()
    {
        return $this->belongsTo(Affectation::class);
    }
    public function email()
    {
        return $this->belongsTo(Email::class);
    }
    public function newsletter()
    {
        return $this->belongsTo(Newsletter::class);
    }

    public function postuler()
    {
        return $this->belongsTo(Postuler::class);
    }

    public function product()
    {
        return $this->belongsTo(Product::class);
    }
    public function image_user()
    {
        return $this->hasOne(ImageUser::class);
    }

    public function auteurs()
    {
        return $this->hasMany(Message::class, 'auteur_id');
    }
    public function destinataires()
    {
        return $this->hasMany(Message::class, 'distinataire_id');

    }
    // public function hasAnyRole(array $roles)
    // {
    //     return $this->roles()->whereIn('nom', $roles)->first();
    // }
}
