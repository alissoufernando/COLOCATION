<?php

namespace App\Http\Livewire\Site\Actualites;

use App\Models\Article;
use Livewire\Component;
use App\Models\Category;
use Livewire\WithPagination;

class ListeActualiteComponent extends Component
{
    use WithPagination;
    protected $paginationTheme = 'bootstrap';
    public function render()
    {

        $articles = Article::latest()->paginate(6);
        $categorieMenu = Category::where('menu',1)->get();
        $article_recents = Article::latest()->limit(3)->get();


        return view('livewire.site.actualites.liste-actualite-component',[
            'articles' => $articles,
            'categorieMenu' => $categorieMenu,
            'article_recents' => $article_recents,
        ])->layout('layouts.site');
    }
}
