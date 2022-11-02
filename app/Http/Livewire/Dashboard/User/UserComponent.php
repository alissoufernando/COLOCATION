<?php

namespace App\Http\Livewire\Dashboard\User;

use App\Models\Role;
use App\Models\User;
use Livewire\Component;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use App\Actions\Fortify\PasswordValidationRules;
use App\Mail\NewUser;

class UserComponent extends Component
{
    use PasswordValidationRules;
    public $name;
    public $phone;
    public $email;
    public $password = "coloc@student@12345";
    public $user_id;
    public $myUserE, $rolessU =[];

    protected $listeners = ['deleteConfirmation' => 'deleteUsers'];


    public function resetInputFields()
    {
        // Clean errors if were visible before
        $this->resetErrorBag();
        $this->resetValidation();
        if($this->user_id){
            $this->reset(['name', 'phone', 'email','user_id']);
        }
        $this->reset(['name', 'phone', 'email', 'password']);
    }


    public function updated($fields)
    {
        if ($this->user_id) {
            $this->validateOnly($fields, [
                'name' =>  ['required'],
                'phone' =>  ['required'],
                'email' =>  ['required'],
            ]);
        } else {
            $this->validateOnly($fields, [
                'name' =>  ['required'],
                'phone' =>  ['required'],
                'email' =>  ['required'],
            ]);
        }

    }
    public function saveUser()
    {
        // dd($this->rolessU);:
        if ($this->user_id) {

            $this->validate([
                'name' => ['required',],
                'phone' =>  ['required'],
                'email' => ['required',],
            ]);
            // dd('ok');
        } else {
            $this->validate([
                'name' =>  ['required'],
                'phone' =>  ['required'],
                'email' =>  ['required'],
            ]);
        }
        $myUser = new User();

        if ($this->user_id) {
            $myUser = User::findOrFail($this->user_id);
        }

        if($this->user_id) {

            $myUser->name = $this->name;
            $myUser->phone = $this->phone;
            $myUser->email = $this->email;
            // $myUser->roles()->sync($this->rolessU);
            $myUser->save();

            // return redirect()->route('admin.user-index');

        } else {
            $myUser->name = $this->name;
            $myUser->phone = $this->phone;
            $myUser->email = $this->email;
            $myUser->password = Hash::make($this->password);
            Mail::to($this->email)->send( new NewUser($this->name, $this->email,$this->phone,$this->password));
            $myUser->save();
            $myUser = User::where('email' ,$this->email)->first();
            $userRole = Role::where('nom' ,'Etudiant')->first();
            $myUser->roles()->attach($userRole);

            return redirect()->route('admin.user-index');


        }



        if ($this->user_id) {
            session()->flash('message', 'Modification effectuée avec succès.');
        } else {
            session()->flash('message', 'Enregistrement effectué avec succès.');
        }
        $this->resetInputFields();
        $this->emit('saveUser');
    }

    public function getElementById($id)
    {
        $this->user_id = $id;
        $this->myUserE = User::findOrFail($this->user_id);
        // $this->roless = explode(",", $this->myUserE->roles()->get()->pluck('id'));
        // dd($this->roless);

        $this->name = $this->myUserE->name;
        $this->phone = $this->myUserE->phone;
        $this->email = $this->myUserE->email;
    }


    public function deleteUser($id)
    {
        $this->deleteIdBeingRemoved = $id;
        $this->dispatchBrowserEvent('show-delete-confirmation');
    }

    public function deleteUsers()
    {
        $myUser = User::findOrFail($this->deleteIdBeingRemoved);
        $myUser->isDelete = 1;
        $myUser->save();
        $this->dispatchBrowserEvent('deleted',['message' => 'Cet utilisateur à été supprimer']);

    }
    public function render()
    {
        $users = User::where('isDelete', 0)->orderBy('created_at','DESC')->get();
        $roles = Role::where('isDelete', 0)->orderBy('created_at','DESC')->get();
        return view('livewire.dashboard.user.user-component',[
            'users' => $users,
            'roles' => $roles,
        ]);
    }
}
