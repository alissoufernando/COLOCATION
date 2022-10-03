<?php

namespace App\Http\Livewire\Site\Products;

use Cart;
use App\Models\Review;
use App\Models\Product;
use Livewire\Component;
use App\Models\Category;
use App\Models\Newsletter;
use Illuminate\Support\Facades\Auth;

class DetailComponent extends Component
{
    public $product_id;
    public $qty;
    public $rating;
    public $comment;
    public $email, $user_id;

    public function resetInputFieldss()
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

       $this->resetInputFieldss();
    }

    public function mount($id)
    {
        $this->product_id = $id;
        $this->order_item_id = $id;
        $this->qty = 1;
    }

    public function resetInputFields()
    {
        // Clean errors if were visible before
        $this->resetErrorBag();
        $this->resetValidation();
        $this->reset(['rating', 'comment']);
    }



    public function addToWishlist($product_id, $product_name, $product_price){

        Cart::instance('wishlist')->add($product_id, $product_name,1, $product_price)->associate(Product::class);
        $this->emitTo('site.products.wish-cart-count-component','refreshComponent');
        return back();
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
    public function update($fields)
    {
        $this->validateOnly($fields,[
            'rating' => 'required',
            'comment' => 'required',
        ]);
    }

    public function addReview()
    {

        $this->validate([
            'rating' => 'required',
            'comment' => 'required',
        ]);
        $review = new Review();
        $review->rating = $this->rating;
        $review->comment = $this->comment;
        $review->save();

        session()->flash('message_r', 'votre note a été ajouter avec succès');
        $this->resetInputFields();
        $this->emit('addReview');
    }



    public function render()
    {

        $product = Product::where('id', $this->product_id)->with('images')->get();
        $products_related = Product::where('categorie_id', $product->first()->categorie_id)->inRandomOrder()->with('images')->limit(4)->get();
        $categorieMenu = Category::where('menu',1)->get();

        return view('livewire.site.products.detail-component',[
            'product' => $product,
            'products_related' => $products_related,
            'categorieMenu' => $categorieMenu,
        ])->layout('layouts.site');
    }
}
