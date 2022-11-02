<?php

namespace App\Http\Livewire\Dashboard\Profil;

use App\Models\User;
use App\Models\Profile;
use Livewire\Component;
use App\Models\ImageUser;
use Livewire\WithFileUploads;
use Illuminate\Support\Facades\Auth;

class ProfilComponent extends Component
{
    use WithFileUploads;
    public $name;
    public $email;
    public $user_id;
    public $phone;
    public $link_facebook;
    public $link_twitter;
    public $link_instagram;
    public $profile_id;
    public $path;
    public $birthday;
    public $adresse;
    public $profession;

    public $deleteIdBeingRemoved = null;
    protected $listeners = ['deleteConfirmation' => 'deleteProfiles'];

    public function resetInputFields()
    {
        // Clean errors if were visible before
        $this->resetErrorBag();
        $this->resetValidation();
        $this->reset([
        'link_instagram',
        'profile_id',
        'link_twitter',
        'link_facebook',
        'phone',
        'user_id',
        'email',
        'name',
        'birthday',
        'adresse',
        'profession'
        ]);
    }

    public function resetInputFieldss()
    {
        // Clean errors if were visible before
        $this->resetErrorBag();
        $this->resetValidation();
        $this->reset([
        'path',
        ]);
    }


    public function updated($fields)
    {
        if ($this->profile_id) {
            $this->validateOnly($fields, [
                'link_facebook' => 'required',
                'link_instagram' => 'required',
                'link_twitter' => 'required',
                'name' => 'required',
                'email' => 'required',
                'birthday' => 'required',
                'adresse' => 'required',
                'profession' => 'required',
                'phone' => 'required|numeric',
            ]);
        } else {
            $this->validateOnly($fields, [
                'link_facebook' => 'required',
                'link_instagram' => 'required',
                'link_twitter' => 'required',
                'name' => 'required',
                'email' => 'required',
                'birthday' => 'required',
                'profession' => 'required',
                'adresse' => 'required',
                'phone' => 'required|numeric',
            ]);
        }
    }
    public function saveProfile()
    {
        if ($this->profile_id) {
            $this->validate([
                'link_facebook' => 'required',
                'link_instagram' => 'required',
                'link_twitter' => 'required',
                'name' => 'required',
                'email' => 'required',
                'adresse' => 'required',
                'profession' => 'required',
                'birthday' => 'required',
                'phone' => 'required|numeric',
            ]);
        } else {
            $this->validate([
                'link_facebook' => 'required',
                'link_instagram' => 'required',
                'link_twitter' => 'required',
                'name' => 'required',
                'email' => 'required',
                'adresse' => 'required',
                'profession' => 'required',
                'birthday' => 'required',
                'phone' => 'required|numeric',
            ]);
        }

        $myProfile = new Profile();
        if ($this->profile_id) {
            $myProfile = Profile::findOrFail($this->profile_id);
        }
        $myProfile->link_facebook = $this->link_facebook;
        $myProfile->link_instagram = $this->link_instagram;
        $myProfile->link_twitter = $this->link_twitter;
        $myProfile->birthday = $this->birthday;
        $myProfile->name = $this->name;
        $myProfile->profession = $this->profession;

        $myProfile->adresse = $this->adresse;
        $myProfile->email = $this->email;
        $myProfile->user_id = $this->user_id;
        $myProfile->phone = $this->phone;
        $myProfile->save();

        if ($this->profile_id) {
            session()->flash('message', 'Modification effectuée avec succès.');
        } else {

            session()->flash('message', 'Enregistrement effectué avec succès.');
        }

        $this->resetInputFields();
        $this->emit('saveProfile');

        return redirect()->route('site.my-account');


    }

    public function saveImageUser()
    {
        if ($this->profile_id) {
            $this->validate([
                'path' => 'required',

            ]);
        } else {
            $this->validate([
                'path' => 'required',

            ]);
        }

        $myImageUser = new ImageUser();
        if ($this->profile_id) {
            $myImageUser = ImageUser::findOrFail($this->profile_id);
        }

        $filenameImage = time() . '.' . $this->path->extension();
        $pathImage = $this->path->storeAs(
            'ImageProfilUser',
            $filenameImage,
            'public'
        );
        $myImageUser->path = $pathImage;
        $myImageUser->user_id = Auth::user()->id;
        $myImageUser->save();

        if ($this->profile_id) {
            session()->flash('message', 'Modification effectuée avec succès.');
        } else {

            session()->flash('message', 'Enregistrement effectué avec succès.');
        }

        $this->resetInputFieldss();
        $this->emit('saveImageUser');
        return redirect()->route('site.my-account');


    }


    public function getElementById($id)
    {
        $this->profile_id = $id;
        $myProfile = Profile::findOrFail($this->profile_id);
        $this->link_facebook = $myProfile->link_facebook;
        $this->link_instagram = $myProfile->link_instagram;
        $this->link_twitter = $myProfile->link_twitter;
        $this->name = $myProfile->name;
        $this->profession = $myProfile->profession;
        $this->email = $myProfile->email;
        $this->birthday = $myProfile->birthday;
        $this->adresse = $myProfile->adresse;
        $this->user_id = $myProfile->user_id;
        $this->zipphonecode = $myProfile->phone;

    }

    public function getId($id)
    {
        $this->profile_id = $id;
        $myImageUser = ImageUser::findOrFail($this->profile_id);
        $this->path = $myImageUser->path;

    }


    public function deleteProfile($id)
    {
        $this->deleteIdBeingRemoved = $id;
        $this->dispatchBrowserEvent('show-delete-confirmation');
    }

    public function deleteProfiles()
    {


        $myProfile = Profile::findOrFail($this->deleteIdBeingRemoved);
        $myProfile->isDelete = 1;
        $myProfile->save();
        $this->dispatchBrowserEvent('deleted', ['message' => 'Ce profile à été supprimer']);
    }
    public function render()
    {
        $ImageUser = ImageUser::where('isDelete', 0)->where('user_id', Auth::user()->id)->first();
        $userPr = Profile::where('isDelete', 0)->where('user_id', Auth::user()->id)->first();
        $users = User::where('isDelete', 0)->where('id', Auth::user()->id)->first();

        if($userPr)
        {

            $userProfile = Profile::where('isDelete', 0)->where('user_id', Auth::user()->id)->first();

        }else{

            $profile = new Profile();
            $profile->user_id = Auth::user()->id;
            $profile->name = $users->name;
            $profile->email = $users->email;
            $profile->phone = $users->phone;
            $profile->link_facebook = "#";
            $profile->link_instagram = "#";
            $profile->link_twitter = "#";
            $profile->adresse = "None";
            $profile->birthday = now();
            $profile->profession = "None";
            $profile->save();
            $userProfile = Profile::where('isDelete', 0)->where('user_id', Auth::user()->id)->first();
        }
        // dd(Auth::user()->image_user->path);
        $user = User::find(Auth::user()->id);
        // dd($user->image_user);

        return view('livewire.dashboard.profil.profil-component',[
            'user' => $user,
            'userProfile' => $userProfile,
            'ImageUser' => $ImageUser,
        ]);
    }
}
