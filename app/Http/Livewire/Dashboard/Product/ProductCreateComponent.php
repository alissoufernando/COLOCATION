<?php

namespace App\Http\Livewire\Dashboard\Product;

use App\Models\Ville;
use App\Models\Product;
use Livewire\Component;
use App\Models\Category;
use App\Models\Departement;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;

class ProductCreateComponent extends Component
{

    public $name;
    public $slug;
    public $short_description;
    public $description;
    public $normal_price;
    public $ville_id;
    public $type_annonce;
    public $quartier;
    public $disponibilite;
    public $place_dispo;
    public $user_id;
    public $categorie_id;


    public function resetInputFields()
    {
        // Clean errors if were visible before
        $this->resetErrorBag();
        $this->resetValidation();
        $this->reset(['ville_id', 'type_annonce','name', 'slug', 'normal_price','quartier', 'short_description', 'categorie_id','description','disponibilite','place_dispo', 'user_id']);

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
                'quartier' =>  'required',
                'short_description' =>  'required',
                'categorie_id' =>  'required',
                'description' => 'required',
                'place_dispo' => 'required',
                'ville_id' => 'required',
                'type_annonce' => 'required',

            ]);

        $product = new Product();

        $product->user_id = Auth::user()->id;
        $product->quartier = $this->quartier;
        $product->name = $this->name;
        $product->slug = $this->slug;
        $product->ville_id = $this->ville_id;
        $product->type_annonce = $this->type_annonce;
        $product->normal_price = $this->normal_price;
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

        $villes = Ville::where('isDelete', 0)->orderBy('created_at','DESC')->get();

        $departements = Departement::where('isDelete', 0)->orderBy('created_at','DESC')->get();

        $categorie = Category::where('isDelete', 0)->orderBy('created_at','DESC')->get();

        return view('livewire.dashboard.product.product-create-component',[
            'categorie' => $categorie,
            'departements' => $departements,
            'villes' => $villes,
        ]);
    }
}
