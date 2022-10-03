<?php

namespace App\Http\Livewire\Site\Products;

use Cart;
use App\Models\Product;
use Livewire\Component;
use App\Models\Category;
use App\Models\Newsletter;
use Livewire\WithPagination;
use Illuminate\Support\Facades\Auth;

class CategorieComponent extends Component
{
    public $sorting;
    use WithPagination;
    protected $paginationTheme = 'bootstrap';
    public $pagesize;
    public $category_id;
    public $id_scategory;
    public $id_sscategory;

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

    public function mount($id)
    {
        $this->sorting = "default";
        $this->pagesize = 3;
        $this->category_id = $id;
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
        $category_id = null;
        $category_name = "";
        $filter = "";
        if($this->category_id)
        {
            $categorys = Category::where('id', $this->category_id)->first();
            $category_id = $categorys->id;
            $category_name = $categorys->name;
            $filter = "";
        }


        if($this->sorting == "date")
        {
            $products = Product::whereBetween('normal_price', [$this->min_price, $this->max_price])->where($filter.'categorie_id', $category_id)->orderBy('created_at', 'DESC')->paginate($this->pagesize);
        }else if($this->sorting == "price")
        {
            $products = Product::whereBetween('normal_price', [$this->min_price, $this->max_price])->where($filter.'categorie_id', $category_id)->orderBy('normal_price', 'ASC')->paginate($this->pagesize);

        }else if($this->sorting == "price-desc")
        {
            $products = Product::whereBetween('normal_price', [$this->min_price, $this->max_price])->where($filter.'categorie_id', $category_id)->orderBy('normal_price', 'DESC')->paginate($this->pagesize);

        }else{
            $products = Product::whereBetween('normal_price', [$this->min_price, $this->max_price])->where($filter.'categorie_id', $category_id)->paginate($this->pagesize);
        }
        $category = Category::all();
        $categorieMenu = Category::where('menu',1)->get();

        return view('livewire.site.products.categorie-component',[
            'products' => $products,
            'category' => $category,
            'category_name' => $category_name,
            'categorieMenu' => $categorieMenu,
        ])->layout('layouts.site');
    }
}
