<?php

namespace App\Http\Livewire\Dashboard\Product;

use App\Models\Product;
use Livewire\Component;
use Livewire\WithPagination;
use Illuminate\Support\Facades\Auth;

class MesProductsComponent extends Component
{
    use WithPagination;
    public $deleteIdBeingRemoved = null;
    protected $listeners = ['deleteConfirmation' => 'deleteProducts'];

    public function deleteProduct($id)
    {
        $this->deleteIdBeingRemoved = $id;
        $this->dispatchBrowserEvent('show-delete-confirmation');
    }

    public function deleteProducts()
    {
        $myProduct = Product::findOrFail($this->deleteIdBeingRemoved);
        $myProduct->isDelete = 1;
        $myProduct->save();
        $this->dispatchBrowserEvent('deleted',['message' => 'Ce produit à été supprimer']);

    }
    public function render()
    {
        $product = Product::where('isDelete', 0)->where('user_id', Auth::user()->id)->orderBy('created_at','DESC')->get();
        return view('livewire.dashboard.product.mes-products-component',[
            'product' => $product,
        ]);
    }
}
