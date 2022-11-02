<?php

namespace App\Http\Livewire\Dashboard;

use App\Models\Article;
use App\Models\Newsletter;
use App\Models\Postuler;
use App\Models\Product;
use App\Models\Profile;
use App\Models\User;
use Livewire\Component;

class DashboardComponent extends Component
{

    public function render()
    {
        $users = User::all();
        $products = Product::all();
        $postulers = Postuler::all();
        $articles = Article::all();
        $profiles = Profile::all();
        $newletters = Newsletter::all();

        return view('livewire.dashboard.dashboard-component',[
            "users" => $users,
            "products" => $products,
            "postulers" => $postulers,
            "articles" => $articles,
            "profiles" => $profiles,
            "newletters" => $newletters,

        ]);
    }
}
