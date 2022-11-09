<?php

namespace App\Http\Livewire\Dashboard\Actualites;

use App\Models\Article;
use Livewire\Component;
use Illuminate\Support\Str;
use Livewire\WithFileUploads;

class ModificationActualiteComponent extends Component
{
    use WithFileUploads;
    public $path;
    public $slug;
    public $short_description;
    public $description;
    public $titre;
    public $auteur;
    public $article_id;

    public function resetInputFields()
    {
        // Clean errors if were visible before
        $this->resetErrorBag();
        $this->resetValidation();
        $this->reset(['path', 'titre', 'slug', 'short_description','description','auteur','article_id']);
    }
    public function mount($id) {
        $this->article_id = $id;
        $myArticle = Article::find($this->article_id);

        $this->titre = $myArticle->titre;
        $this->slug =  $myArticle->slug;
        $this->path = $myArticle->path;
        $this->auteur = $myArticle->auteur;
        $this->short_description = $myArticle->short_description;
        $this->description = $myArticle->description;
    }

    public function generateSlug() {

        $this->slug = Str::slug($this->path,'-');
    }


    public function updateArticle()
    {
                $this->validate([
                    'titre' =>  'required',
                    'slug' =>  'required',
                    'auteur' =>  'required',
                    'path' =>  'required',
                    'short_description' =>  'required',
                    'description' => 'required',
                ]);

            $MyArticle = Article::find($this->article_id);

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

        session()->flash('message', 'Modification effectué avec succès.');
        $this->resetInputFields();

    }
    public function render()
    {
        return view('livewire.dashboard.actualites.modification-actualite-component');
    }
}
