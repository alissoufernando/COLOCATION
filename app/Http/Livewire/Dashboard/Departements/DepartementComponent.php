<?php

namespace App\Http\Livewire\Dashboard\Departements;

use App\Models\Departement;
use Livewire\Component;

class DepartementComponent extends Component
{
    public $name;
    public $departement_id;

    public $deleteIdBeingRemoved = null;
    protected $listeners = ['deleteConfirmation' => 'deleteDepartements'];

    public function resetInputFields()
    {
        // Clean errors if were visible before
        $this->resetErrorBag();
        $this->resetValidation();
        $this->reset([
        'departement_id',
        'name',
        ]);
    }

    public function updated($fields)
    {
        if ($this->departement_id) {
            $this->validateOnly($fields, [
                'name' => 'required',
            ]);
        } else {
            $this->validateOnly($fields, [
                'name' => 'required',

            ]);
        }
    }
    public function saveDepartement()
    {
        if ($this->departement_id) {
            $this->validate([
                'name' => 'required',

            ]);
        } else {
            $this->validate([
                'name' => 'required',

            ]);
        }

        $myDepartement = new Departement();
        if ($this->departement_id) {
            $myDepartement = Departement::findOrFail($this->departement_id);
        }
        $myDepartement->name = $this->name;
        $myDepartement->save();

        if ($this->departement_id) {
            session()->flash('message', 'Modification effectuée avec succès.');
        } else {

            session()->flash('message', 'Enregistrement effectué avec succès.');
        }

        $this->resetInputFields();
        $this->emit('saveDepartement');

        return redirect()->route('admin.departement-index');


    }

    public function getElementById($id)
    {
        $this->departement_id = $id;
        $myDepartement = Departement::findOrFail($this->departement_id);
        $this->name = $myDepartement->name;
    }
    public function deleteDepartement($id)
    {
        $this->deleteIdBeingRemoved = $id;
        $this->dispatchBrowserEvent('show-delete-confirmation');
    }

    public function deleteDepartements()
    {


        $myDepartement = Departement::findOrFail($this->deleteIdBeingRemoved);
        $myDepartement->isDelete = 1;
        $myDepartement->save();
        $this->dispatchBrowserEvent('deleted', ['message' => 'Ce Departement à été supprimer']);
    }
    public function render()
    {
        $departements = Departement::where('isDelete', 0)->orderBy('created_at','DESC')->get();
        return view('livewire.dashboard.departements.departement-component',[
            "departements" => $departements,
        ]);
    }
}
