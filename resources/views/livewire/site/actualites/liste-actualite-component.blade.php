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
            <nav class="navbar navbar-expand-lg" id="nav_media">
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
                <div class="col-md-6 ">
                    <div class="page-title " >
                        <h1>Articles</h1>
                    </div>
                </div>
                <div class="col-md-6 ">
                    <ol class="breadcrumb justify-content-md-end">
                        <li class="breadcrumb-item"><a href="#">Accueil</a></li>
                        <li class="breadcrumb-item active"><a href="#">Articles</a></li>
                    </ol>
                </div>
            </div>
        </div><!-- END CONTAINER-->
    </div>
    <!-- END SECTION BREADCRUMB -->
    @endsection

<!-- START MAIN CONTENT -->
<div class="main_content">
    @if (Session::has('message'))
    <div class="alert alert-success">{{Session::get('message')}}</div>
    @endif

<!-- START SECTION BLOG -->
<div class="section">
	<div class="container">
    	<div class="row">
        	<div class="col-lg-9">
                <div class="row blog_thumbs">
                    @foreach ($articles as $article)
                    <div class="col-12">
                        <div class="blog_post blog_style2">
                            <div class="div_imageA blog_img">
                            <a href="{{route('site.detail-article',['id' => $article->id])}}">
                            @empty ($article->path)
                            <img src="{{asset('assets/images/product/default.png')}}" alt="{{$article->titre}}">
                            @else
                            <img src="{{asset('storage')}}/{{$article->path}}" alt="{{ $article->titre }}">
                            @endempty

                            </a>
                            </div>
                            <div class="blog_content bg-white">
                                <div class="blog_text">
                                    <h6 class="blog_title"><a href="{{route('site.detail-article',['id' => $article->id])}}">{{ $article->titre }}</a></h6>
                                    <ul class="list_none blog_meta">
                                        <li><a href="#"><i class="ti-calendar"></i> {{ $article->created_at->format('d M o') }}</a></li>
                                        <li><a href="#"><i class="ti-user"></i> posté par {{ $article->auteur }}</a></li>
                                    </ul>
                                    <p>{!! $article->short_description !!}</p>
                                    <a href="{{route('site.detail-article',['id' => $article->id])}}" class="btn btn-fill-out btn-radius btn-xs">Voir plus</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endforeach

                </div>
                <div class="row">
                    <div class="col-12 mt-2 mt-md-4 justify-content-center">
                        {{$articles->links()}}
                    </div>
                </div>
            </div>
        	<div class="col-lg-3 mt-4 pt-2 mt-lg-0 pt-lg-0">
            	<div class="sidebar">
                	<div class="widget">
                        <div class="search_form">
                            <form>
                                <input required="" class="form-control" placeholder="Rechercher...." type="text">
                                <button type="submit" title="Subscribe" class="btn icon_search" name="submit" value="Submit">
                                    <i class="ion-ios-search-strong"></i>
                                </button>
                            </form>
                        </div>
                    </div>
                	<div class="widget">
                    	<h5 class="widget_title"> Articles Récent</h5>
                        <ul class="widget_recent_post">
                            @foreach ($article_recents as $article_recent)
                            <li>
                                <div class="post_footer">
                                    <div class="post_img">
                                        <a href="{{route('site.detail-article',['id' => $article_recent->id])}}">
                                            @empty ($article_recent->path)
                                            <img src="{{asset('assets/images/product/default.png')}}" alt="{{$article->titre}}">
                                            @else
                                            <img src="{{asset('storage')}}/{{$article_recent->path}}" alt="{{ $article_recent->titre }}">
                                            @endempty
                                        </a>
                                    </div>
                                    <div class="post_content">
                                        <h6><a href="#">{{ $article_recent->titre }}</a></h6>
                                        <p class="small m-0">{{ $article_recent->created_at->format('d M o') }}</p>
                                    </div>
                                </div>
                            </li>
                            @endforeach

                    	</ul>
                    </div>

                	<div class="widget">
                    	<h5 class="widget_title">tags</h5>
                        <div class="tags">
                        	<a href="#">General</a>
                            <a href="#">Design</a>
                            <a href="#">jQuery</a>
                            <a href="#">Branding</a>
                            <a href="#">Modern</a>
                            <a href="#">Blog</a>
                            <a href="#">Quotes</a>
                            <a href="#">Advertisement</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END SECTION BLOG -->

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
                    <form wire:submit.prevent='inscription_newsletter'>
                        <input type="text" required="" class="form-control rounded-0" placeholder="Entrer l'adresse e-mail" wire:model="email">
                        <button type="submit" class="btn btn-dark rounded-0" name="submit" value="Submit">S'abonner</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- START SECTION SUBSCRIBE NEWSLETTER -->

</div>
<!-- END MAIN CONTENT -->
{{-- @include('livewire.site.partials.modal-Contact') --}}

@section('script-super')

@endsection
</div>

