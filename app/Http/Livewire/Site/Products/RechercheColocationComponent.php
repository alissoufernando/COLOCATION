<?php

namespace App\Http\Livewire\Site\Products;

use Cart;
use App\Models\Product;
use Livewire\Component;
use App\Models\Category;
use App\Models\Postuler;
use App\Models\Newsletter;
use Illuminate\Http\Request;
use Livewire\WithPagination;
use Illuminate\Support\Facades\Auth;


class RechercheColocationComponent extends Component
{
    use WithPagination;
    protected $paginationTheme = 'bootstrap';
    public $sorting;
    public $pagesize;
    public $search;

    public $min_price;
    public $max_price;

    public $email, $user_id, $post;
    public $categorie_id, $ville_id, $type_annonce, $date_de_sortie, $date_entre, $indetermine, $message, $product_id, $product_ids;

    public function resetInputFieldss()
    {
        // Clean errors if were visible before
        $this->resetErrorBag();
        $this->resetValidation();

        $this->reset(['date_de_sortie', 'date_entre', 'indetermine', 'message', 'user_id', 'product_id']);
    }
    public function mount(Request $request)
    {
        $this->sorting = "default";
        $this->pagesize = 3;
        // $this->fill(request()->only('search'));
        $this->ville_id = $request->ville_id;
        $this->categorie_id = $request->categorie_id;
        $this->type_annonce = $request->type_annonce;
        // dd($request->ville_id);
        $this->min_price = 1;
        $this->max_price = 10000;
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


        $this->post = Postuler::where('isDelete', 0)->where('user_id', Auth::user()->id)->where('product_id', $this->product_ids)->first();
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
            $products = Product::where('isDelete', 0)->where('disponibilite', 1)->whereBetween('normal_price', [$this->min_price, $this->max_price])->where('type_annonce', $this->type_annonce)->where('categorie_id', $this->categorie_id)->where('ville_id', $this->ville_id)->orderBy('created_at', 'DESC')->paginate($this->pagesize);
        }else if($this->sorting == "price")
        {
            $products = Product::where('isDelete', 0)->where('disponibilite', 1)->whereBetween('normal_price', [$this->min_price, $this->max_price])->where('type_annonce', $this->type_annonce)->where('categorie_id', $this->categorie_id)->where('ville_id', $this->ville_id)->orderBy('normal_price', 'ASC')->paginate($this->pagesize);

        }else if($this->sorting == "price-desc")
        {
            $products = Product::where('isDelete', 0)->where('disponibilite', 1)->whereBetween('normal_price', [$this->min_price, $this->max_price])->where('type_annonce', $this->type_annonce)->where('categorie_id', $this->categorie_id)->where('ville_id', $this->ville_id)->orderBy('normal_price', 'DESC')->paginate($this->pagesize);

        }else{
            $products = Product::where('isDelete', 0)->where('disponibilite', 1)->whereBetween('normal_price', [$this->min_price, $this->max_price])->where('type_annonce', $this->type_annonce)->where('categorie_id', $this->categorie_id)->where('ville_id', $this->ville_id)->paginate($this->pagesize);
        }
        $category = Category::where('isDelete', 0)->orderBy('created_at','DESC')->get();
        $categorieMenu = Category::where('isDelete', 0)->where('menu',1)->get();
        return view('livewire.site.products.recherche-colocation-component',[
            'products' => $products,
            'category' => $category,
            'categorieMenu' => $categorieMenu,
        ])->layout('layouts.site');
    }
}
