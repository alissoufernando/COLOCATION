<div>
    @section('headerTop')
    <div class="top-header">
        <div class="container">
            @include('livewire.site.partials.link-auth')
        </div>
    </div>
    @endsection

    @section('headerNav')
    <div class="bottom_header dark_skin main_menu_uppercase">
    	<div class="container">
            <nav class="navbar navbar-expand-lg">
                @include('livewire.site.partials.logo')

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-expanded="false">
                    <span class="ion-android-menu"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
                    @include('livewire.site.partials.navbar-link')
                </div>
                <ul class="navbar-nav attr-nav align-items-center">
                    <li><a href="javascript:void(0);" class="nav-link search_trigger"><i class="linearicons-magnifier"></i></a>
                        @include('livewire.site.products.header-search-component')
                    </li>

                    {{-- <li class="dropdown cart_dropdown">
                        @livewire('site.products.wish-count-component')
                    </li> --}}
                </ul>
            </nav>
        </div>
    </div>
    @endsection
    @section('sous-menu')
    <!-- START SECTION BREADCRUMB -->
    <div class="breadcrumb_section bg_gray page-title-mini">
        <div class="container minimenu"><!-- STRART CONTAINER -->
            <div class="row align-items-center">
                <div class="col-md-6">
                    <div class="page-title">
                        <h1>Connéxion</h1>
                    </div>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb justify-content-md-end">
                        <li class="breadcrumb-item"><a href="#">Accueil</a></li>
                        <li class="breadcrumb-item active">Connéxion</li>
                    </ol>
                </div>
            </div>
        </div><!-- END CONTAINER-->
    </div>
    <!-- END SECTION BREADCRUMB -->
        @endsection
    <!-- START LOGIN SECTION -->
<div class="login_register_wrap section">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-xl-6 col-md-10">
                <div class="login_wrap">
            		<div class="padding_eight_all bg-white">
                        <div class="heading_s1">
                            <h3>Connéxion</h3>
                        </div>
                        <form method="post" action="{{route('login')}}">
                            @csrf
                            <div class="form-group mb-3">
                                <input type="text" required="" class="form-control" name="email" placeholder="Votre Email" :value="old('email')" required autofocus >
                            </div>
                            <div class="form-group mb-3">
                                <input class="form-control" type="password" name="password" placeholder="mot de passe" required autocomplete="current-password">
                            </div>
                            <div class="login_footer form-group mb-3">
                                <div class="chek-form">
                                    <div class="custome-checkbox">
                                        <input class="form-check-input" type="checkbox" name="remember" id="remember_me" value="">
                                        <label class="form-check-label" for="remember_me"><span>Souvinir de moi</span></label>
                                    </div>
                                </div>
                                @if (Route::has('password.request'))
                                <a href="{{ route('password.request') }}">Mot de passe ?</a>
                                @endif
                            </div>
                            <div class="form-group mb-3">
                                <button type="submit" class="btn btn-fill-out btn-block" name="login">Connéxion</button>
                            </div>
                        </form>
                        <div class="form-note text-center">Vous n'avez pas de compte ? <a href="{{route('register')}}">Inscription</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END LOGIN SECTION -->

<!-- START SECTION SUBSCRIBE NEWSLETTER -->
<div class="section bg_default small_pt small_pb">
	<div class="container">
    	<div class="row align-items-center">
            <div class="col-md-6">
                <div class="heading_s1 mb-md-0 heading_light">
                    <h3>Abonnez-vous à notre newsletter</h3>
                </div>
            </div>
            <div class="col-md-6">
                <div class="newsletter_form">
                    <form>
                        <input type="text" required="" class="form-control rounded-0" placeholder="Enter Email Address">
                        <button type="submit" class="btn btn-dark rounded-0" name="submit" value="Submit">S'abonner</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- START SECTION SUBSCRIBE NEWSLETTER -->
</div>
