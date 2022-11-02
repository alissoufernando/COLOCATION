<?php

namespace App\Http\Livewire\Site\Actualites;

use App\Models\Article;
use App\Models\Product;
use Livewire\Component;
use App\Models\Category;

class DetailActualiteComponent extends Component
{
    public $article_id;
    public function mount($id)
    {
        $this->article_id = $id;

    }
    public function render()
    {
        $article = Article::where('isDelete', 0)->where('id', $this->article_id )->first();
        $article_recents = Article::where('isDelete', 0)->orderBy('created_at','DESC')->limit(3)->get();
        $categorieMenu = Category::where('isDelete', 0)->where('menu',1)->get();


        return view('livewire.site.actualites.detail-actualite-component',[
            'article' => $article,
            'categorieMenu' => $categorieMenu,
            'article_recents' => $article_recents
        ])->layout('layouts.site');
    }
}
