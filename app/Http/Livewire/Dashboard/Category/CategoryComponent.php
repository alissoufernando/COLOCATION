<?php

namespace App\Http\Livewire\Dashboard\Category;

use Livewire\Component;
use App\Models\Category;
use App\Models\Subcategory;
use Illuminate\Support\Str;
use App\Models\Subsubcategory;

class CategoryComponent extends Component
{

    public $name;
    public $slug;
    public $parent_id;
    public $parents_id;
    public $categorie_id;
    public $menu;
    public $id_cat_menu;
    public $deleteIdBeingRemoved = null;
    protected $listeners = ['deleteConfirmation' => 'deleteCategorys','deleteConfirmation' => 'deleteSubcategorys','deleteConfirmation' => 'deleteSubsubcategorys'];

    public function generateSlug() {

        $this->slug = Str::slug($this->name,'-');
    }


    public function resetInputFields()
    {
        // Clean errors if were visible before
        $this->resetErrorBag();
        $this->resetValidation();
        $this->reset(['name', 'slug', 'parent_id','parents_id','categorie_id']);
    }


    public function updated($fields)
    {
        if ($this->categorie_id) {
            $this->validateOnly($fields, [
                'name' =>  ['required'],
                'slug' =>  ['required'],

            ]);
        } else {
            $this->validateOnly($fields, [
                'name' =>  ['required'],
                'slug' =>  ['required'],

            ]);
        }

    }
    public function updatemenu($id){

        $this->id_cat_menu = $id;
        $myCategorieMenu = Category::findOrFail($this->id_cat_menu);
        if($myCategorieMenu->menu == 0)
        {
            $this->menu = 1;
        }else{
            $this->menu = 0;
        }
        $myCategorieMenu->menu = $this->menu;
        $myCategorieMenu->save();

        return redirect()->route('admin.category-index');

    }
    public function saveCategory()
    {
        if ($this->categorie_id) {
            $this->validate([
                'name' =>  ['required'],
                'slug' =>  ['required'],

            ]);
        } else {
            $this->validate([
                'name' =>  ['required'],
                'slug' =>  ['required'],

            ]);
        }

            $myCategorie = new Category();
        if ($this->categorie_id) {
            $myCategorie = Category::findOrFail($this->categorie_id);
        }

        $myCategorie->name = $this->name;
        $myCategorie->slug = $this->slug;
        $myCategorie->save();


        if ($this->categorie_id) {
            session()->flash('message', 'Modification effectu??e avec succ??s.');
        } else {
            session()->flash('message', 'Enregistrement effectu?? avec succ??s.');
        }
        $this->resetInputFields();
        $this->emit('saveCategory');
    }

    public function getElementById($id)
    {


            $this->categorie_id = $id;
            $myCategorie = Category::findOrFail($this->categorie_id);
            $this->categorie_id = $myCategorie->category_id;
            $this->name = $myCategorie->name;
            $this->slug = $myCategorie->slug;

    }


    public function deleteCategory($id)
    {
        $this->deleteIdBeingRemoved = $id;
        $this->dispatchBrowserEvent('show-delete-confirmation');
    }

    public function deleteCategorys()
    {
        $myCategorie = Category::findOrFail($this->deleteIdBeingRemoved);
        $myCategorie->isDelete = 1;
        $myCategorie->save();
        $this->dispatchBrowserEvent('deleted',['message' => 'Cette cat??gorie ?? ??t?? supprimer']);

    }
    public function deleteSubcategory($id)
    {
        $this->deleteIdBeingRemoved = $id;
        $this->dispatchBrowserEvent('show-delete-confirmation');
    }


    public function render()
    {
        $categorie = Category::where('isDelete', 0)->orderBy('created_at','DESC')->get();
        // dd('ok');

        return view('livewire.dashboard.category.category-component',[
            'categorie' => $categorie,
        ]);
    }
}
