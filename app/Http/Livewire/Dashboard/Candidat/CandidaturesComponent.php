<?php

namespace App\Http\Livewire\Dashboard\Candidat;

use Livewire\Component;
use App\Models\Postuler;
use App\Mail\ReponseDemande;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;

class CandidaturesComponent extends Component
{
    public $postuler_id, $mydemande;
    public $reponse;
    public $user_id;
    public $deleteIdBeingRemoved = null;
    protected $listeners = ['deleteConfirmation' => 'deletePostulers'];

    public function updateRepondre($id){

        $this->postuler_id = $id;
        $this->reponse = "Refusé";

        $myPostuler = Postuler::findOrFail($this->postuler_id);
        // dd($myPostuler->user->email);
        $myPostuler->reponse = $this->reponse;
        $myPostuler->save();

        Mail::to($myPostuler->user->email)->send( new ReponseDemande($this->postuler_id));


        return redirect()->route('admin.toutescandidature-index');

    }

    public function updateRepond($id){

        $this->postuler_id = $id;
        $this->reponse = "Validé";
        $myPostuler = Postuler::findOrFail($this->postuler_id);
        $myPostuler->reponse = $this->reponse;
        $myPostuler->save();

        return redirect()->route('admin.toutescandidature-index');

    }

    public function deletePostuler($id)
    {
        $this->deleteIdBeingRemoved = $id;
        $this->dispatchBrowserEvent('show-delete-confirmation');
    }

    public function deletePostulers()
    {
        $myPostuler = Postuler::findOrFail($this->deleteIdBeingRemoved);
        $myPostuler->isDelete = 1;
        $myPostuler->save();

        $this->dispatchBrowserEvent('deleted',['message' => 'Cette candidature à été supprimer']);

    }
    public function deleteSubcategory($id)
    {
        $this->deleteIdBeingRemoved = $id;
        $this->dispatchBrowserEvent('show-delete-confirmation');
    }
    public function render()
    {
        $postulers = Postuler::where('isDelete', 0)->orderBy('created_at','DESC')->get();
        $this->user_id = Auth::user()->id;
        return view('livewire.dashboard.candidat.candidatures-component',[
            "postulers" => $postulers,
        ]);
    }
}