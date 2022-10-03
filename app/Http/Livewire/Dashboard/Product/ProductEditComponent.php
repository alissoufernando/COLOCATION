<?php

namespace App\Http\Livewire\Dashboard\Product;

use App\Models\Product;
use Livewire\Component;
use App\Models\Category;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;

class ProductEditComponent extends Component
{
    public $name;
    public $slug;
    public $short_description;
    public $description;
    public $normal_price;
    public $department;
    public $type_annonce;
    public $ville;
    public $commune;
    public $departement;
    public $disponibilite;
    public $place_dispo;
    public $user_id, $product_id;

    public function resetInputFields()
    {
        // Clean errors if were visible before
        $this->resetErrorBag();
        $this->resetValidation();
        $this->reset(['type_annonce', 'ville','name', 'slug', 'normal_price', 'departement','commune', 'short_description', 'categorie_id','description','disponibilite','place_dispo', 'user_id']);
    }
    public function mount($id) {

        $myProduct = Product::where('id', $id)->first();

        $this->product_id = $id;
        $this->name = $myProduct->name;
        $this->slug =  $myProduct->slug;
        $this->normal_price = $myProduct->normal_price;
        $this->departement = $myProduct->departement;
        $this->commune = $myProduct->commune;
        $this->ville = $myProduct->ville;
        $this->type_annonce = $myProduct->type_annonce;
        $this->short_description = $myProduct->short_description;
        $this->categorie_id = $myProduct->categorie_id;
        $this->description = $myProduct->description;
        $this->department = $myProduct->department;
        $this->disponibilite = $myProduct->disponibilite;
        $this->place_dispo = $myProduct->place_dispo;
        $this->user_id = $myProduct->user_id;
    }

    public function generateSlug() {

        $this->slug = Str::slug($this->name,'-');
    }


    public function updateProduct()
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
            'description' => 'required',
            'type_annonce' => 'required',
            'ville' => 'required',
        ]);


        $myProduct = Product::find($this->product_id);

        if( $this->user_id == Auth::user()->id)
        {
            $myProduct->user_id = $this->user_id;

        }
        $myProduct->commune = $this->commune;
        $myProduct->name = $this->name;
        $myProduct->slug = $this->slug;
        $myProduct->normal_price = $this->normal_price;
        $myProduct->departement = $this->departement;
        $myProduct->disponibilite = $this->disponibilite;
        $myProduct->ville = $this->ville;
        $myProduct->type_annonce = $this->type_annonce;
        $myProduct->place_dispo = $this->place_dispo;
        $myProduct->short_description = $this->short_description;
        $myProduct->categorie_id = $this->categorie_id;
        $myProduct->description = $this->description;
        $myProduct->save();

       session()->flash('message', 'Modification effectuée avec succès.');
       $this->resetInputFields();

    }

    public function render()
    {
        $categorie = Category::all();
        return view('livewire.dashboard.product.product-edit-component',[
            'categorie' => $categorie,
        ]);
    }
}
