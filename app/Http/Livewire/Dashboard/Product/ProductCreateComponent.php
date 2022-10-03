<?php

namespace App\Http\Livewire\Dashboard\Product;

use App\Models\Product;
use Livewire\Component;
use App\Models\Category;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;

class ProductCreateComponent extends Component
{

    public $name;
    public $slug;
    public $short_description;
    public $description;
    public $normal_price;
    public $departement;
    public $ville;
    public $type_annonce;
    public $commune;
    public $disponibilite;
    public $place_dispo;
    public $user_id;
    public $categorie_id;


    public function resetInputFields()
    {
        // Clean errors if were visible before
        $this->resetErrorBag();
        $this->resetValidation();
        $this->reset(['ville', 'type_annonce','name', 'slug', 'normal_price', 'departement','commune', 'short_description', 'categorie_id','description','disponibilite','place_dispo', 'user_id']);

    }
    public function mount() {
        $this->disponibilite = 1;
    }


    public function generateSlug() {

        $this->slug = Str::slug($this->name,'-');
    }

    public function saveProduct()
    {
            $this->validate([
                'name' =>  'required',
                'slug' =>  'required',
                'normal_price' =>  'required',
                'departement' =>  'required',
                'commune' =>  'required',
                'short_description' =>  'required',
                'categorie_id' =>  'required',
                'description' => 'required',
                'place_dispo' => 'required',
                'ville' => 'required',
                'type_annonce' => 'required',

            ]);

        $product = new Product();

        $product->user_id = Auth::user()->id;
        $product->commune = $this->commune;
        $product->name = $this->name;
        $product->slug = $this->slug;
        $product->ville = $this->ville;
        $product->type_annonce = $this->type_annonce;
        $product->normal_price = $this->normal_price;
        $product->departement = $this->departement;
        $product->disponibilite = $this->disponibilite;
        $product->place_dispo = $this->place_dispo;
        $product->short_description = $this->short_description;
        $product->categorie_id = $this->categorie_id;
        $product->description = $this->description;

        $product->save();


       session()->flash('message', 'Enregistrement effectué avec succès.');
       $this->resetInputFields();

    }

    public function render()
    {

        $categorie = Category::all();

        return view('livewire.dashboard.product.product-create-component',[
            'categorie' => $categorie,
        ]);
    }
}
