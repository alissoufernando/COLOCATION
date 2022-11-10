<?php

namespace App\Http\Livewire\Dashboard\Messages;

use App\Models\User;
use App\Models\Message;
use Livewire\Component;
use Illuminate\Support\Facades\Auth;

class MessageAnnonceComponent extends Component
{
    public $destinataire_id , $name, $rechercherNames =[], $mesUeserMessage = [], $dernierMessage =[];
    public $auteur_id;
    public $message;

    public function resetInputFields()
    {
        // Nettoyer les erreurs si elles étaient visibles auparavant ou vider la variable message apres l'envoi
        $this->resetErrorBag();
        $this->resetValidation();
        $this->reset(['message']);

    }

    public function updatedName($value)
    {
        // rechercher par nom pour les messages en utilisant un service
        // $this->rechercherNames = UserMessage::rechercherUserNameMessage($value);
        // rechercher par nom pour les messages en utilisant juste une request
        $this->rechercherNames = User::where('name', 'like', '%'.$value.'%')->get();

    }

    public function mount($id) {
        // recuperation de Id du destinataire d'un message
        $this->destinataire_id = $id;
    }

    // cette fonction me permet de sauvegarder les messages
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
      // $users  = User::latest()->distinct()->get();
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
        // tous les messages ou l'utilisateur connecté est l'auteur ou le destinataire
        $mes_messages = Message::where('auteur_id', Auth::user()->id)->orWhere('distinataire_id', Auth::user()->id)->get();

        // recuperation de l'ID des auteurs et destinataires des messages sauf l'utilisateur connecté
        foreach($mes_messages as $mes_message)
        {
            if($mes_message->auteur_id != Auth::user()->id)
            {
                array_push($this->mesUeserMessage, $mes_message->auteur_id);

            }

            if($mes_message->distinataire_id != Auth::user()->id)
            {
                array_push($this->mesUeserMessage, $mes_message->distinataire_id);

            }
        }
        // recuperation du tableau d'ID sans les doublons
        $uniqueMesUeserMessage = array_unique($this->mesUeserMessage);
        // request pour trouver toute personne ayant converser avec l'utisateur connecté
        $users  = User::whereIn('id',$uniqueMesUeserMessage)->get();
        // foreach($users as $user)
        // {
        //     $this->dernierMessage = [];
        //     $message = Message::where('auteur_id', $user->id)->where('distinataire_id', Auth::user()->id)->orWhere('auteur_id', Auth::user()->id)->where('distinataire_id', $user->id)->get()->last();
        //     dd($message);
        //     array_push($this->dernierMessage, $message->message);
        // }

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

        $message = Message::all();
        return view('livewire.dashboard.messages.message-annonce-component',[
            'users' => $users,
            // 'userNameMassages' => $users,
            'userM' => $userM,
            'messages_auteur' => $messages_auteur,
            'messages_destinataire' => $messages_destinataire,
            'message' => $message

        ]);
    }
}
