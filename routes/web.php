<?php

use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Route;
use App\Http\Livewire\Auth\LoginComponent;
use App\Http\Livewire\Site\WelcomeComponent;
use App\Http\Livewire\Auth\RegisterComponent;
use App\Http\Livewire\Site\Shop\ShopComponent;
use App\Http\Livewire\Site\Email\EmailComponent;
use App\Http\Livewire\Auth\ResetPasswordComponent;
use App\Http\Livewire\Site\Products\WishComponent;
use App\Http\Livewire\Auth\ForgotPasswordComponent;
use App\Http\Livewire\Dashboard\DashboardComponent;
use App\Http\Livewire\Dashboard\Role\RoleComponent;
use App\Http\Livewire\Dashboard\User\UserComponent;
use App\Http\Livewire\Auth\ConfirmPasswordComponent;
use App\Http\Livewire\Site\Contact\ContactComponent;
use App\Http\Livewire\Site\Products\DetailComponent;
use App\Http\Livewire\Site\Products\SearchComponent;
use App\Http\Livewire\Site\Shop\ColocationComponent;
use App\Http\Livewire\Dashboard\Profil\ProfilComponent;
use App\Http\Livewire\Site\Products\CategorieComponent;
use App\Http\Livewire\Dashboard\Product\ProductComponent;
use App\Http\Livewire\Dashboard\Messages\MessageComponent;
use App\Http\Livewire\Dashboard\Candidat\CadidatsComponent;
use App\Http\Livewire\Dashboard\Category\CategoryComponent;
use App\Http\Livewire\Dashboard\Parametre\ParametreComponent;
use App\Http\Livewire\Dashboard\Product\ProductEditComponent;
use App\Http\Livewire\Dashboard\Actualites\ActualiteComponent;
use App\Http\Livewire\Dashboard\Contact\AdminContactComponent;
use App\Http\Livewire\Dashboard\Product\ProductImageComponent;
use App\Http\Livewire\Site\Actualites\ListeActualiteComponent;
use App\Http\Livewire\Dashboard\Product\ProductCreateComponent;
use App\Http\Livewire\Site\Actualites\DetailActualiteComponent;
use App\Http\Livewire\Dashboard\Messages\MessageAnnonceComponent;
use App\Http\Livewire\Dashboard\Actualites\CreationActualiteComponent;
use App\Http\Livewire\Dashboard\Actualites\ModificationActualiteComponent;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('/', WelcomeComponent::class)->name('welcome');

Route::get('/dashboard', DashboardComponent::class)->name('dashboard');

Route::get('/login', LoginComponent::class)->name('login');
Route::get('/register', RegisterComponent::class)->name('register');
Route::get('/user/confirmed-password-status', ConfirmPasswordComponent::class)->name('password.confirmation');
Route::get('/forgot-password', ForgotPasswordComponent::class)->name('password.request');
Route::get('/reset-password/{token}', ResetPasswordComponent::class)->name('password.reset');

Route::get('/email', EmailComponent::class)->name('site.email');

Route::get('/contact', ContactComponent::class)->name('site.contact');
Route::prefix('site')->group(function () {
    Route::get('/detail-produit/{id}', DetailComponent::class)->name('site.detail-produit');
    Route::get('/produit-categorie/{id}', CategorieComponent::class)->name('site.produit-categorie');
    Route::get('/locations', ShopComponent::class)->name('site.shop');
    Route::get('/colocations', ColocationComponent::class)->name('site.colocation');
    Route::get('/search', SearchComponent::class)->name('site.search');


    Route::get('/detail-article/{id}', DetailActualiteComponent::class)->name('site.detail-article');
    Route::get('/les-aticles', ListeActualiteComponent::class)->name('site.articles');



    Route::get('/shopping-wishlist', WishComponent::class)->name('site.shopping-wishlist');

    Route::get('/mon-compte', ProfilComponent::class)->name('site.my-account');

});

     //Language Change
     Route::get('lang/{locale}', function($locale){
        if( !in_array($locale, ['en', 'es', 'pt', 'fr']) ) {
          abort(400);
        }
        Session()->put('locale', $locale);
        Session()->get('locale');
        App::setLocale($locale);
        return redirect()->back();
      })->name('lang');

Route::middleware(['auth:sanctum',config('jetstream.auth_session'),  'verified'])->group(function () {
        Route::prefix('admin')->group(function () {
            Route::get('/liste-produits', ProductComponent::class)->name('admin.product-index');
            Route::get('/product-create', ProductCreateComponent::class)->name('admin.product-create');
            Route::get('/product-edit/{id}', ProductEditComponent::class)->name('admin.product-edit');
            Route::get('/detail-produit/{id}', ProductImageComponent::class)->name('admin.detail-produit');
            Route::get('/liste-categories', CategoryComponent::class)->name('admin.category-index');
            Route::get('/liste-candidatues', CadidatsComponent::class)->name('admin.candidature-index');
            // route pour repondre et lancer une autre conversation
            Route::get('/mes-messages', MessageComponent::class)->name('mes-messages');
            //  route pour contacter le propriétaire d'une annonce
            Route::get('/message/{id}', MessageAnnonceComponent::class)->name('contact.par-message');


            Route::get('/article-create', CreationActualiteComponent::class)->name('admin.article-create');
            Route::get('/article-edit/{id}', ModificationActualiteComponent::class)->name('admin.article-edit');
            Route::get('/liste-articles', ActualiteComponent::class)->name('admin.article-index');



        });
        Route::prefix('administration')->group(function () {
            Route::get('/liste-utilisateurs', UserComponent::class)->name('admin.user-index');
            Route::get('/liste-roles', RoleComponent::class)->name('admin.role-index');
            Route::get('/admin-contact', AdminContactComponent::class)->name('admin.contact-index');
            Route::get('/admin-parametrage', ParametreComponent::class)->name('admin.parametre-index');
        });
});




