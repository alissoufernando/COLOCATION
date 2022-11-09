<?php

namespace App\Http\Livewire\Dashboard;

use App\Models\Article;
use App\Models\Message;
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
        $cproducts = Product::where('type_annonce',"COLOCATION")->get();
        $lproducts = Product::where('type_annonce',"LOCATION")->get();
        $dproducts = Product::where('isDelete', 1)->get();
        $diproducts = Product::where('disponibilite', 1)->get();
        $indproducts = Product::where('disponibilite', 0)->get();
        $linproducts = Product::where('isDelete', 0)->where('disponibilite', 1)->get();
        $postulers = Postuler::all();
        $rpostulers = Postuler::where('reponse',"Refusé")->get();
        $attpostulers = Postuler::where('reponse', null)->get();
        $vpostulers = Postuler::where('reponse',"Validé")->get();
        $dpostulers = Postuler::where('isDelete', 1)->get();
        $articles = Article::all();
        $messages = Message::all();
        $profiles = Profile::all();
        $newletters = Newsletter::all();

        return view('livewire.dashboard.dashboard-component',[
            "users" => $users,
            "products" => $products,
            "postulers" => $postulers,
            "articles" => $articles,
            "profiles" => $profiles,
            "newletters" => $newletters,
            "messages" => $messages,
            "indproducts" => $indproducts,
            "linproducts" => $linproducts,
            "rpostulers" => $rpostulers,
            "attpostulers" => $attpostulers,
            "vpostulers" => $vpostulers,
            "dpostulers" => $dpostulers,
            "cproducts" => $cproducts,
            "lproducts" => $lproducts,
            "diproducts" => $diproducts,
            "dproducts" => $dproducts,
        ]);
    }
}
