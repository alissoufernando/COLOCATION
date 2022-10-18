<?php

namespace App\Http\Livewire\Dashboard\Messages;

use App\Models\User;
use App\Models\Message;
use Livewire\Component;
use App\Service\UserMessage;
use Illuminate\Support\Facades\Auth;

class MessageComponent extends Component
{

    public $destinataire_id , $name, $rechercherNames =[], $mesUeserMessage = [];
    public $auteur_id;
    public $message;

    public function resetInputFields()
    {
        // Clean errors if were visible before
        $this->resetErrorBag();
        $this->resetValidation();
        $this->reset(['message']);

    }

    public function updatedName($value)
    {
        $this->rechercherNames = UserMessage::rechercherUserNameMessage($value);

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
        $users  = User::latest()->distinct()->get();
        // foreach($userss as $user)
        // {
        // dd($user->auteur['auteur_id']);

            // && ($user->auteur->auteur_id == Auth::user()->id || $user->auteur->distinataire_id == Auth::user()->id)
            // dd($user->auteur->auteur_id == Auth::user()->id || $user->auteur->distinataire_id == Auth::user()->id);
            // if($user->id != Auth::user()->id && ($user->auteur['auteur_id'] == Auth::user()->id || $user->auteur['distinataire_id'] == Auth::user()->id))
            // {
            //     // $this->mesUeserMessage = $user->id;
            //     array_push($this->mesUeserMessage, $user->id);
            // }

        // }
        // dd($this->mesUeserMessage);
        // tous les messages don je suis l'auteur ou le destinataire
        $mes_messages = Message::where('auteur_id', Auth::user()->id)->orWhere('distinataire_id', Auth::user()->id)->distinct()->get();
        // dd($mes_messages);
        if($this->destinataire_id)
        {
            $messages_auteur = Message::where('auteur_id', Auth::user()->id)->where('distinataire_id',$this->destinataire_id)->get();
            $messages_destinataire = Message::where('auteur_id', $this->destinataire_id)->where('distinataire_id',Auth::user()->id)->get();
            $userM = User::where('id',$this->destinataire_id)->first();
            // dd($userM->auteurs);
        }else
        {
            $userM = null;
            $messages_destinataire = null;
            $messages_auteur = null;
        }


        return view('livewire.dashboard.messages.message-component',[
            'users' => $users,
            'userM' => $userM,
            'messages_auteur' => $messages_auteur,
            'messages_destinataire' => $messages_destinataire,
            'mes_messages' => $mes_messages,
        ]);
    }
}
