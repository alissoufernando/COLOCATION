<?php

namespace App\Http\Livewire\Dashboard\Actualites;

use App\Models\Article;
use Livewire\Component;
use Livewire\WithPagination;

class ActualiteComponent extends Component
{
    use WithPagination;
    public $deleteIdBeingRemoved = null;
    protected $listeners = ['deleteConfirmation' => 'deleteArticles'];

    public function deleteArticle($id)
    {
        $this->deleteIdBeingRemoved = $id;
        $this->dispatchBrowserEvent('show-delete-confirmation');
    }

    public function deleteArticles()
    {
        $myArticle = Article::findOrFail($this->deleteIdBeingRemoved);
        $myArticle->delete();
        $this->dispatchBrowserEvent('deleted',['message' => 'Ce article à été supprimer']);

    }
    public function render()
    {
        $articles = Article::latest()->get();
        return view('livewire.dashboard.actualites.actualite-component',[
            'articles' => $articles,
        ]);
    }
}
