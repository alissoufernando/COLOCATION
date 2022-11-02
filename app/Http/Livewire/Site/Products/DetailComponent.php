<?php

namespace App\Http\Livewire\Site\Products;

use Cart;
use App\Models\Review;
use App\Models\Product;
use Livewire\Component;
use App\Models\Category;
use App\Models\Postuler;
use App\Models\Newsletter;
use Illuminate\Support\Facades\Auth;

class DetailComponent extends Component
{
    public $qty;
    public $rating;
    public $comment;


    public $email, $user_id, $post;
    public $date_de_sortie, $date_entre, $indetermine, $message, $product_id, $product_ids;

    public function resetInputFieldsss()
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

       $this->resetInputFieldsss();

    }

    public function getElementById($id)
    {

        if(Auth::check())
        {
            $this->product_ids = $id;
        // dd($this->product_ids);


        $this->post = Postuler::where('isDelete', 0)->where('user_id', Auth::user()->id)->where('product_id', $this->product_ids)->first();
        // $this->post = $this->post->
        // dd($this->post->reponse);

        }else{
            return Redirect()->route('login');
        }

    }

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
        $review->product_id = $this->product_id;
        $review->user_id = Auth::user()->id;
        $review->rating = $this->rating;
        $review->comment = $this->comment;
        $review->save();

        session()->flash('message_r', 'votre note a été ajouter avec succès');
        $this->resetInputFields();
        $this->emit('addReview');
    }



    public function render()
    {

        $product = Product::where('isDelete', 0)->where('disponibilite', 1)->where('id', $this->product_id)->with('images')->get();
        $products_related = Product::where('isDelete', 0)->where('categorie_id', $product->first()->categorie_id)->inRandomOrder()->with('images')->limit(4)->get();
        $categorieMenu = Category::where('isDelete', 0)->where('menu',1)->get();
        // foreach($product as $products)
        // {

        //     dd($products->ville->departement->name);
        // }

        return view('livewire.site.products.detail-component',[
            'product' => $product,
            'products_related' => $products_related,
            'categorieMenu' => $categorieMenu,
        ])->layout('layouts.site');
    }
}
