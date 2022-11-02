<?php

namespace App\Http\Livewire\Dashboard\Contact;

use App\Models\Contact;
use Livewire\Component;

class AdminContactComponent extends Component
{
    public $deleteIdBeingRemoved = null;
    protected $listeners = ['deleteConfirmation' => 'deleteContacts'];
    public function deleteContact($id)
    {
        $this->deleteIdBeingRemoved = $id;
        $this->dispatchBrowserEvent('show-delete-confirmation');
    }

    public function deleteContacts()
    {
        $myContact = Contact::findOrFail($this->deleteIdBeingRemoved);
        $myContact->isDelete = 1;
        $myContact->save();
        $this->dispatchBrowserEvent('deleted',['message' => 'ce message à été supprimer']);

    }
    public function render()
    {
        $contact = Contact::where('isDelete', 0)->orderBy('created_at','DESC')->get();
        return view('livewire.dashboard.contact.admin-contact-component',[
            'contact' => $contact,
        ]);
    }
}
