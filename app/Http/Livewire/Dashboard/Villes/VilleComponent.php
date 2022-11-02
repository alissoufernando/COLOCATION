<?php

namespace App\Http\Livewire\Dashboard\Villes;

use App\Models\Departement;
use App\Models\Ville;
use Livewire\Component;

class VilleComponent extends Component
{
    public $name;
    public $departement_id;
    public $ville_id;

    public $deleteIdBeingRemoved = null;
    protected $listeners = ['deleteConfirmation' => 'deleteVilles'];

    public function resetInputFields()
    {
        // Clean errors if were visible before
        $this->resetErrorBag();
        $this->resetValidation();
        $this->reset([
        'departement_id',
        'name',
        'ville_id'
        ]);
    }

    public function updated($fields)
    {
        if ($this->ville_id) {
            $this->validateOnly($fields, [
                'name' => 'required',
                'departement_id' => 'required',
            ]);
        } else {
            $this->validateOnly($fields, [
                'name' => 'required',
                'departement_id' => 'required',

            ]);
        }
    }
    public function saveVille()
    {
        if ($this->ville_id) {
            $this->validate([
                'name' => 'required',
                'departement_id' => 'required',

            ]);
        } else {
            $this->validate([
                'name' => 'required',
                'departement_id' => 'required',

            ]);
        }

        $myVille = new Ville();
        if ($this->ville_id) {
            $myVille = Ville::findOrFail($this->ville_id);
        }
        $myVille->name = $this->name;
        $myVille->departement_id = $this->departement_id;

        $myVille->save();

        if ($this->ville_id) {
            session()->flash('message', 'Modification effectuée avec succès.');
        } else {

            session()->flash('message', 'Enregistrement effectué avec succès.');
        }

        $this->resetInputFields();
        $this->emit('saveVille');
        return redirect()->route('admin.departement-index');

    }

    public function getElementById($id)
    {
        $this->ville_id = $id;
        $myVille = Ville::findOrFail($this->ville_id);
        $this->name = $myVille->name;
        $this->departement_id = $myVille->departement_id;

    }
    public function deleteVille($id)
    {
        $this->deleteIdBeingRemoved = $id;
        $this->dispatchBrowserEvent('show-delete-confirmation');
    }

    public function deleteVilles()
    {


        $myVille = Ville::findOrFail($this->deleteIdBeingRemoved);
        $myVille->isDelete = 1;
        $myVille->save();
        $this->dispatchBrowserEvent('deleted', ['message' => 'Cette Ville à été supprimer']);
    }
    public function render()
    {
        $villes = Ville::where('isDelete', 0)->orderBy('created_at','DESC')->get();
        $departements = Departement::where('isDelete', 0)->orderBy('created_at','DESC')->get();
        return view('livewire.dashboard.villes.ville-component',[
            'villes' => $villes,
            'departements' => $departements,
        ]);
    }
}
