<?php

namespace App\Http\Livewire\Dashboard\Messages;

use App\Models\User;
use App\Models\Message;
use Livewire\Component;
use Illuminate\Support\Facades\Auth;

class MessageAnnonceComponent extends Component
{
    public $destinataire_id;
    public $auteur_id;
    public $message;

    public function resetInputFields()
    {
        // Clean errors if were visible before
        $this->resetErrorBag();
        $this->resetValidation();
        $this->reset(['message']);

    }
    public function mount($id)
    {
        $this->destinataire_id = $id;

    }
    public function getId($id) {
        $this->destinataire_id = $id;
        // dd($this->destinataire_id);
    }

    public function saveMessage()
    {
            $this->validate([
                'message' =>  'required',
            ]);

        $MyMessage = new Message();

        $MyMessage->auteur_id = Auth::user()->id;
        $MyMessage->distinataire_id = $this->destinataire_id;
        $MyMessage->message = $this->message;
        $MyMessage->save();
       $this->resetInputFields();

    }
    public function render()
    {
        $users = User::all();
        if($this->destinataire_id)
        {
            $messages_auteur = Message::where('auteur_id', Auth::user()->id)->where('distinataire_id',$this->destinataire_id)->get();
            $messages_destinataire = Message::where('auteur_id', $this->destinataire_id)->where('distinataire_id',Auth::user()->id)->get();
            $userM = User::where('id',$this->destinataire_id)->first();
        }else
        {
            $userM = null;
            $messages_destinataire = null;
            $messages_auteur = null;
        }
        return view('livewire.dashboard.messages.message-annonce-component',[
            'users' => $users,
            // 'userNameMassages' => $users,
            'userM' => $userM,
            'messages_auteur' => $messages_auteur,
            'messages_destinataire' => $messages_destinataire,
        ]);
    }
}
