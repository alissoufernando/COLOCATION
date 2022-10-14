<?php

namespace App\Http\Livewire\Dashboard\Actualites;

use App\Models\Article;
use Livewire\Component;
use Illuminate\Support\Str;
use Livewire\WithFileUploads;
use Illuminate\Support\Facades\Auth;

class CreationActualiteComponent extends Component
{
    use WithFileUploads;
    public $path;
    public $slug;
    public $short_description;
    public $description;
    public $titre;
    public $auteur;

    public function resetInputFields()
    {
        // Clean errors if were visible before
        $this->resetErrorBag();
        $this->resetValidation();
        $this->reset(['path', 'titre', 'slug', 'short_description','description','auteur']);

    }

    public function generateSlug() {
        $this->slug = Str::slug($this->titre,'-');
    }

    public function saveArticle()
    {
        // dd($this->path);
        $this->validate([
            'titre' =>  'required',
            'slug' =>  'required',
            'auteur' =>  'required',
            'path' =>  'required',
            'short_description' =>  'required',
            'description' => 'required',
            ]);

        $MyArticle = new Article();

        $filenameImage = time() . '.' . $this->path->extension();
        $pathImage = $this->path->storeAs(
            'ImageArticle',
            $filenameImage,
            'public'
        );
        $MyArticle->path = $pathImage;
        $MyArticle->titre = $this->titre;
        $MyArticle->slug = $this->slug;
        $MyArticle->auteur = $this->auteur;
        $MyArticle->short_description = $this->short_description;
        $MyArticle->description = $this->description;
        $MyArticle->save();

       session()->flash('message', 'Enregistrement effectué avec succès.');
       $this->resetInputFields();

    }
    public function render()
    {
        return view('livewire.dashboard.actualites.creation-actualite-component');
    }
}
