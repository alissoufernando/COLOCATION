<?php

namespace App\Http\Livewire\Site\Products;

use Cart;
use App\Models\Product;
use Livewire\Component;
use App\Models\Category;
use App\Models\Newsletter;
use Illuminate\Support\Facades\Auth;

class SearchComponent extends Component
{
    public $sorting;
    public $pagesize;
    public $search;
    // public $product_cat;
    // public $product_cat_id;

    public $min_price;
    public $max_price;

    public $open = false;
    public $open1 = false;
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
        $this->pagesize = 12;
        $this->fill(request()->only('search'));
        $this->min_price = 1;
        $this->max_price = 1000;
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
            $products = Product::whereBetween('normal_price', [$this->min_price, $this->max_price])->where('name', 'like', '%'.$this->search.'%')->orderBy('created_at', 'DESC')->paginate($this->pagesize);
        }else if($this->sorting == "price")
        {
            $products = Product::whereBetween('normal_price', [$this->min_price, $this->max_price])->where('name', 'like', '%'.$this->search.'%')->orderBy('normal_price', 'ASC')->paginate($this->pagesize);

        }else if($this->sorting == "price-desc")
        {
            $products = Product::whereBetween('normal_price', [$this->min_price, $this->max_price])->where('name', 'like', '%'.$this->search.'%')->orderBy('normal_price', 'DESC')->paginate($this->pagesize);

        }else{
            $products = Product::whereBetween('normal_price', [$this->min_price, $this->max_price])->where('name', 'like', '%'.$this->search.'%')->paginate($this->pagesize);
        }
        $category = Category::latest()->get();
        $categorieMenu = Category::where('menu',1)->get();

        return view('livewire.site.products.search-component',[
            'products' => $products,
            'category' => $category,
            'categorieMenu' => $categorieMenu,
        ])->layout('layouts.site');
    }
}
