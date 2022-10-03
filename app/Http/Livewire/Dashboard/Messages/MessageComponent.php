<?php

namespace App\Http\Livewire\Dashboard\Messages;

use App\Models\Message;
use Livewire\Component;
use Illuminate\Support\Facades\Auth;

class MessageComponent extends Component
{
    public $destinataire_id;
    public $auteur_id;
    public $message;

    public function resetInputFields()
    {
        // Clean errors if were visible before
        $this->resetErrorBag();
        $this->resetValidation();
        $this->reset(['message', 'auteur_id','destinataire_id']);

    }
    public function mount() {
        $this->disponibilite = 1;
    }

    public function saveMessage()
    {
            $this->validate([
                'message' =>  'required',
            ]);

        $MyMessage = new Message();

        $MyMessage->auteur_id = Auth::user()->id;
        $MyMessage->destinataire_id = $this->destinataire_id;
        $MyMessage->message = $this->message;
        $MyMessage->save();
       $this->resetInputFields();

    }
    public function render()
    {
        return view('livewire.dashboard.messages.message-component');
    }
}
