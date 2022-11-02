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

        $articles = Article::where('isDelete', 0)->orderBy('created_at','DESC')->paginate(6);
        $categorieMenu = Category::where('isDelete', 0)->where('menu',1)->get();
        $article_recents = Article::where('isDelete', 0)->orderBy('created_at','DESC')->limit(3)->get();


        return view('livewire.site.actualites.liste-actualite-component',[
            'articles' => $articles,
            'categorieMenu' => $categorieMenu,
            'article_recents' => $article_recents,
        ])->layout('layouts.site');
    }
}
