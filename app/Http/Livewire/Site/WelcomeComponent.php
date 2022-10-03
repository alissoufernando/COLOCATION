<?php

namespace App\Http\Livewire\Site;

use Cart;
use App\Models\Product;
use Livewire\Component;
use App\Models\Category;
use App\Models\Newsletter;
use App\Models\Parametre;
use App\Models\Postuler;
use Illuminate\Support\Facades\Auth;


class WelcomeComponent extends Component
{
    public $email, $user_id, $post;
    public $categorie_id, $ville, $type_annonce, $date_de_sortie, $date_entre, $indetermine, $message, $product_id, $product_ids;

    public function resetInputFieldss()
    {
        // Clean errors if were visible before
        $this->resetErrorBag();
        $this->resetValidation();

        $this->reset(['date_de_sortie', 'date_entre', 'indetermine', 'message', 'user_id', 'product_id']);
    }

    public function savePostule()
    {
        $this->validate([
            'message' =>  ['required'],
            'date_entre' =>  ['required'],

        ]);
        // dd($this->message);

        $postuler = new Postuler();
        $postuler->user_id = Auth::user()->id;
        $postuler->date_entre = $this->date_entre;
        $postuler->product_id = $this->product_id;
        $postuler->message = $this->message;


        if($this->date_de_sortie)
        {
            $postuler->date_de_sortie = $this->date_de_sortie;
        }

        if($this->indetermine)
        {
            $postuler->indetermine = $this->indetermine;
        }

        $postuler->save();

       $this->resetInputFieldss();

    }

    public function getElementById($id)
    {

        $this->product_ids = $id;
        // dd($this->product_ids);


        $this->post = Postuler::where('user_id', Auth::user()->id)->where('product_id', $this->product_ids)->first();
        // $this->post = $this->post->
        // dd($this->post->reponse);

    }

    public function rechercher()
    {
        $products = Product::where('type_annonce', $this->type_annonce)->where('categorie_id', $this->categorie_id)->where('ville', $this->ville)->get();
dd($products);

    }

    public function resetInputFields()
    {
        // Clean errors if were visible before
        $this->resetErrorBag();
        $this->resetValidation();
        $this->reset(['user_id', 'email']);

    }

    public function inscription_newsletter(){
        $this->validate([
            'email' =>  ['required', 'unique:newsletters'],

        ]);

        $product = new Newsletter();

        $product->user_id = Auth::user()->id;
        $product->email = $this->email;
        $product->save();

       $this->resetInputFields();
    }

    public function addToWishlist($product_id, $product_name, $product_price){
        Cart::instance('wishlist')->add($product_id, $product_name,1, $product_price)->associate(Product::class);
        $this->emitTo('site.products.wish-cart-count-component','refreshComponent');
    }

    public function removeFromWishList($product_id)
    {
        foreach(Cart::instance('wishlist')->content() as $witem)
        {
            if($witem->id == $product_id)
            {
                Cart::instance('wishlist')->remove($witem->rowId);
                $this->emitTo('site.products.wish-cart-count-component','refreshComponent');
                return ;
            }
        }
    }
    public function render()
    {
        $products = Product::inRandomOrder()->with('images')->limit(4)->get();
        $products_latest = Product::latest()->with('images')->limit(4)->get();
        $category = Category::latest()->get();
        $parametre = Parametre::find(1);
        $categorieMenu = Category::where('menu',1)->get();
        if(Auth::check())
        {
            Cart::instance('wishlist')->restore(Auth::user()->email);
        }

        return view('livewire.site.welcome-component',[
            'products' => $products,
            'category' => $category,
            'products_latest' => $products_latest,
            'parametre' => $parametre,
            'categorieMenu' => $categorieMenu,
        ])->layout('layouts.site');
    }
}
