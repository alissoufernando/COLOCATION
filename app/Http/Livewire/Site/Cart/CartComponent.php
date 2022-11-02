<?php

namespace App\Http\Livewire\Site\Cart;

use Cart;
use Carbon\Carbon;
use App\Models\Coupon;
use Livewire\Component;
use App\Models\Category;
use Illuminate\Support\Facades\Auth;

class CartComponent extends Component
{
    public $couponCode;
    public $discount;
    public $subtotalAfterDiscount;
    public $taxAfterDiscount;
    public $totalAfterDiscount;

    public function increaseQuantity($rowId){
        $product = Cart::instance('cart')->get($rowId);
        $qty = $product->qty + 1;
        Cart::instance('cart')->update($rowId, $qty);
        $this->emitTo('site.products.shopping-cart-count-component','refreshComponent');

    }

    public function decreaseQuantity($rowId){

        $product = Cart::instance('cart')->get($rowId);
        $qty = $product->qty - 1;
        Cart::instance('cart')->update($rowId, $qty);
        $this->emitTo('site.products.shopping-cart-count-component','refreshComponent');

    }

    public function destroy($rowId){
        Cart::instance('cart')->remove($rowId);
        $this->emitTo('site.products.shopping-cart-count-component','refreshComponent');
        session()->flash('message', 'Un produit à été supprimer du panier.');
    }

    public function switchToSaveForLater($rowId) {
        $item = Cart::instance('cart')->get($rowId);
        Cart::instance('cart')->remove($rowId);
        Cart::instance('saveForLater')->add($item->id, $item->name,1,$item->price)->associate('App\Models\Product');
        $this->emitTo('site.products.shopping-cart-count-component','refreshComponent');
        session()->flash('message', 'Un produit à été sauvegader pour plutard.');
    }
    public function moveToCart($rowId) {
        $item = Cart::instance('saveForLater')->get($rowId);
        Cart::instance('saveForLater')->remove($rowId);
        Cart::instance('cart')->add($item->id, $item->name,1,$item->price)->associate('App\Models\Product');
        $this->emitTo('site.products.shopping-cart-count-component','refreshComponent');
        session()->flash('message', 'Un produit à été ajouter au panier.');
    }
    public function deleteFromSaveForLater($rowId){
        Cart::instance('saveForLater')->remove($rowId);
        // $this->emitTo('site.products.shopping-cart-count-component','refreshComponent');
        session()->flash('message', 'Un produit à été supprimer du sauvegade.');
    }







    public function checkout()
    {
        if(Auth::check()){
            return redirect()->route('checkout');
        }else{
            return redirect()->route('login');
        }
    }

    public function setAmountForCheckout()
    {
        if(session()->has('coupon'))
        {
            session()->put('checkout',[
                'discount' => $this->discount,
                'subtotal' => $this->subtotalAfterDiscount,
                'tax' => $this->taxAfterDiscount,
                'total' => $this->totalAfterDiscount,
            ]);
        }else
        {
            session()->put('checkout',[
                'discount' => 0,
                'subtotal' => Cart::instance('cart')->subtotal(),
                'tax' => Cart::instance('cart')->tax(),
                'total' => Cart::instance('cart')->total(),
            ]);
        }
    }

    public function render()
    {

        $this->setAmountForCheckout();
        if(Auth::check())
        {
            Cart::instance('cart')->store(Auth::user()->email);
        }
        $categorieMenu = Category::where('isDelete', 0)->where('menu',1)->get();

        return view('livewire.site.cart.cart-component',[
            'categorieMenu' => $categorieMenu,
        ])->layout('layouts.site');
    }
}
