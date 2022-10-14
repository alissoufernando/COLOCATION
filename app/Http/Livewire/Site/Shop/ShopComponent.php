<?php

namespace App\Http\Livewire\Site\Shop;

use Cart;
use App\Models\Product;
use Livewire\Component;
use App\Models\Category;
use App\Models\Postuler;
use App\Models\Newsletter;
use Livewire\WithPagination;
use Illuminate\Support\Facades\Auth;

class ShopComponent extends Component
{
    use WithPagination;
    protected $paginationTheme = 'bootstrap';
    public $sorting;
    public $pagesize;

    public $min_price;
    public $max_price;
    public $open = false;
    public $open1 = false;

    public $email, $user_id, $post;
    public $date_de_sortie, $date_entre, $indetermine, $message, $product_id, $product_ids;

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

        if(Auth::check())
        {
            $this->product_ids = $id;
        // dd($this->product_ids);


        $this->post = Postuler::where('user_id', Auth::user()->id)->where('product_id', $this->product_ids)->first();
        // $this->post = $this->post->
        // dd($this->post->reponse);

        }else{
            return Redirect()->route('login');
        }

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

    public function moins()
    {
        $this->open = false;
    }
    public function plus()
    {
        $this->open = true;

    }
    public function moins1()
    {
        $this->open1 = false;
    }
    public function plus1()
    {
        $this->open1 = true;

    }

    public function mount()
    {
        $this->sorting = "default";
        $this->pagesize = 3;
        $this->min_price = 1;
        $this->max_price = 100000;

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
        if($this->sorting == "date")
        {
            $products = Product::whereBetween('normal_price', [$this->min_price, $this->max_price])->where('type_annonce', 'LOCATION')->orderBy('created_at', 'DESC')->paginate($this->pagesize);
        }else if($this->sorting == "price")
        {
            $products = Product::whereBetween('normal_price', [$this->min_price, $this->max_price])->where('type_annonce', 'LOCATION')->orderBy('normal_price', 'ASC')->paginate($this->pagesize);

        }else if($this->sorting == "price-desc")
        {
            $products = Product::whereBetween('normal_price', [$this->min_price, $this->max_price])->where('type_annonce', 'LOCATION')->orderBy('normal_price', 'DESC')->paginate($this->pagesize);

        }else{
            $products = Product::whereBetween('normal_price', [$this->min_price, $this->max_price])->where('type_annonce', 'LOCATION')->paginate($this->pagesize);
        }
        $category = Category::all();
        if(Auth::check())
        {
            Cart::instance('wishlist')->store(Auth::user()->email);
        }
        $categorieMenu = Category::where('menu',1)->get();
        return view('livewire.site.shop.shop-component',[
            'products' => $products,
            'category' => $category,
            'categorieMenu' => $categorieMenu,
        ])->layout('layouts.site');
    }
}
