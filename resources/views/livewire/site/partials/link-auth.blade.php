<div class="row align-items-center memeligne">
    <div class="col-6">
        <div class="d-flex align-items-center justify-content-center justify-content-md-start">
            <ul class="contact_detail text-center text-lg-start contacthead">
                @empty($parametre)
                <li><i class="ti-email"></i><span> <a href="mailto:alissouanani@gmail.com">alissouanani@gmail.com</a></span></li>
                <li><i class="ti-mobile"></i><span> <a href="https://wa.me/+22995185044?text=Bonjour,">+229 95185044</a></span></li>
                @else
                <li><i class="ti-email"></i><span>{{$parametre->email1}}</span></li>
                <li><i class="ti-mobile"></i><span> {{$parametre->phone}}</span></li>
                @endempty
            </ul>
        </div>
    </div>
    <div class="col-6">
        <div class="text-center text-md-end">
            <ul class="header_list menulink">

                @if (Auth::guest())
                <li><a href="{{route('login')}}" class="{{ Route::currentRouteName()== 'login' ? 'active' : '' }}"><i class="ti-user"></i><span>Connéxion</span></a></li>
                <li><a href="{{route('register')}}" class="{{ Route::currentRouteName()== 'register' ? 'active' : '' }}"><i class="ti-user"></i><span>S'enregistrer</span></a></li>
                @else
                <li><a href="{{route('site.my-account')}}" class="{{ Route::currentRouteName()== 'site.my-account' ? 'active' : '' }}"><i class="ti-user"></i><span>Mon Compte</span></a></li>

                @endif
            </ul>
        </div>
    </div>
</div>

