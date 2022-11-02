<?php

namespace App\Http\Livewire\Site\Products;

use Cart;
use App\Models\Product;
use Livewire\Component;
use App\Models\Category;
use App\Models\Newsletter;
use Illuminate\Support\Facades\Auth;

class WishComponent extends Component
{
    public $email, $user_id;

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

    public function destroy($rowId){
        Cart::instance('wishlist')->remove($rowId);
        session()->flash('message', 'Un produit à été supprimer de la liste.');
    }
    public function moveProductFromWishlistToCart($rowId){
        $item = Cart::instance('wishlist')->get($rowId);
        Cart::instance('wishlist')->remove($rowId);
        Cart::instance('cart')->add($item->id, $item->name,1, $item->price)->associate(Product::class);
        $this->emitTo('site.products.wish-cart-count-component','refreshComponent');
        $this->emitTo('site.products.shopping-cart-count-component','refreshComponent');


    }
    public function render()
    {
        if(Auth::check())
        {
            Cart::instance('wishlist')->store(Auth::user()->email);
        }
        $categorieMenu = Category::where('isDelete', 0)->where('menu',1)->get();

        return view('livewire.site.products.wish-component',[
            'categorieMenu' => $categorieMenu,
        ])->layout('layouts.site');
    }
}
