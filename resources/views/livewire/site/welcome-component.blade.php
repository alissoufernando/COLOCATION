<div>
    @section('headerTop')
    <div class="light_skin top-header">
        <div class="container">
            @include('livewire.site.partials.link-auth')
        </div>
    </div>

    @endsection
    @section('headerNav')
    <div class="light_skin main_menu_uppercase">
        <div class="container">
            <nav class="navbar navbar-expand-lg" id="nav_media">
                <a class="navbar-brand" id="link_logo" href="{{route('welcome')}}">
                    <img class="logo_light" id="logo" src="{{asset('assets/site/assets/images/logo_sb_1.png')}}" alt="logo"/>
                    {{-- <img class="logo_dark" id="logo" src="{{asset('assets/site/assets/images/logo_sb_1.png')}}" alt="logo" width="90" height="90" /> --}}
                    {{-- <img class="logo_dark" src="{{asset('assets/site/images/logo_sb_1.png')}}" alt="logo" /> --}}
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-expanded="false">
                    <span class="ion-android-menu"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-center"  id="navbarSupportedContent">
                    @include('livewire.site.partials.navbar-link')
                </div>
                <ul class="navbar-nav attr-nav align-items-center" id="nav_icon">
                    <li><a href="javascript:void(0);" class="nav-link search_trigger"><i
                                class="linearicons-magnifier"></i></a>
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
    <!-- START SECTION BANNER -->

    <div class="banner_section full_screen staggered-animation-wrap">
        <div id="carouselExampleControls" class="carousel slide carousel-fade light_arrow carousel_style2"
                data-bs-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active background_bg overlay_bg_50" data-img-src="{{asset('assets/site/assets/images/2.jpg')}}">
                        <div class="banner_slide_content banner_content_inner">
                            <div class="container">
                                <div class="row justify-content-center">
                                    <div class="col-lg-7 col-md-10">
                                        <div class="banner_content text_white text-center">

                                            <h2 class="staggered-animation" data-animation="fadeInDown"
                                                data-animation-delay="0.3s">Bienvenue sur "STUDENT-COLOC"</h2>
                                            <h4 class="staggered-animation mb-3" data-animation="fadeInUp"
                                                data-animation-delay="0.4s">Trouvez des colocations dans tout le Bénin.</h4>
                                            <div class="mt-3">
                                                <a href="{{ route('site.colocation') }}" type="" class="btn btn-fill-out btn-radius btn-sm">Trouver une chambre</a>
                                                <a href="{{ route('admin.product-create') }}" type="" class="btn btn-fill-out btn-radius btn-sm">Proposez des colocations</a>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item background_bg overlay_bg_50" data-img-src="{{asset('assets/site/assets/images/3.jpg')}}">
                        <div class="banner_slide_content banner_content_inner">
                            <div class="container">
                                <div class="row justify-content-center">
                                    <div class="col-lg-7 col-md-10">
                                        <div class="banner_content text_white text-center">
                                            <h2 class="staggered-animation" data-animation="fadeInDown"
                                                data-animation-delay="0.3s">Plateforme totalement gratuite</h2>
                                            <h4 class="staggered-animation mb-3" data-animation="fadeInUp"
                                                data-animation-delay="0.4s">Aucune commission arbitraire, le service rendu est gratuit.</h4>
                                            <div class="mt-3">
                                                <a href="{{ route('site.colocation') }}" type="" class="btn btn-fill-out btn-radius btn-sm">Trouver une chambre</a>
                                                <a href="{{ route('admin.product-create') }}" type="" class="btn btn-fill-out btn-radius btn-sm">Proposez des colocations</a>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item background_bg overlay_bg_50" data-img-src="{{asset('assets/site/assets/images/6.jpg')}}">
                        <div class="banner_slide_content banner_content_inner">
                            <div class="container">
                                <div class="row justify-content-center">
                                    <div class="col-lg-7 col-md-10">
                                        <div class="banner_content text_white text-center">
                                            <h2 class="staggered-animation" data-animation="fadeInDown"
                                            data-animation-delay="0.3s">Recherche avancée</h2>
                                        <h4 class="staggered-animation mb-3" data-animation="fadeInUp"
                                            data-animation-delay="0.4s">Trouvez rapidement une personne qui vous correspond</h4>
                                        <div class="mt-3">
                                            <a href="{{ route('site.colocation') }}" type="" class="btn btn-fill-out btn-radius btn-sm">Trouver une chambre</a>
                                            <a href="{{ route('admin.product-create') }}" type="" class="btn btn-fill-out btn-radius btn-sm">Proposez des colocations</a>
                                        </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-bs-slide="prev"><i
                        class="ion-chevron-left"></i></a>
                <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-bs-slide="next"><i
                        class="ion-chevron-right"></i></a>
            </div>
    </div>


    <!-- END SECTION BANNER -->

    <!-- END MAIN CONTENT -->
    <div wire:ignore class="main_content">

        <!-- START SECTION CATEGORIES -->
        <div class="section pt-0 small_pb">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="cat_overlap radius_all_5">
                            <div class="row align-items-center">
                                <div class="col-lg-3 col-md-4">
                                    <div class="text-center text-md-start">
                                        <p class="mb-2">Trouvez votre colocation idéale.
                                        </p>
                                    </div>
                                </div>
                                <div class="col-lg-9 col-md-8">
                                    <form action="{{ route('site.search-colocation-avance') }}" >
                                        <div class="row">
                                            <div class="col-md-3">
                                                <select name="ville_id" id="ville_id" class="form-control form-control-sm form-select js-example-basic-single" wire:model="ville_id" required>
                                                    <option value="">Ville</option>
                                                    @foreach ($villes as $ville)
                                                    <option value="{{$ville->id}}">{{$ville->name}}</option>
                                                    @endforeach

                                                </select>
                                            </div>
                                            <div class="col-md-3">
                                                <select name="type_annonce" id="" class="form-control form-control-sm recher" id="recher3" wire:model="type_annonce" required>
                                                    <option value="">Type de location</option>
                                                    <option value="LOCATION">Location</option>
                                                    <option value="COLOCATION">Colocation</option>

                                                </select>
                                            </div>
                                            <div class="col-md-3">
                                                <select name="categorie_id" id="categorie_id" class="form-control form-control-sm form-select js-example-basic-single" wire:model="categorie_id" required>
                                                    <option value="">Type de chambre</option>
                                                    @foreach ($category as $categories)
                                                    <option value="{{$categories->id}}">{{$categories->name}}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                            <div class="col-md-3">
                                                <button type="submit" class="btn btn-fill-out btn-radius btn-sm">
                                                    Rechecher</button>
                                            </div>
                                          </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END SECTION CATEGORIES -->

        <!-- START SECTION SHOP -->
        <div class="section pb_20">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-6">
                        <div class="heading_s4 text-center">
                            <h2>Nos dernières annonces</h2>
                        </div>
                        <p class="text-center leads">Un colocataire heureux est un colocataire qui reste plus longtemps! Notre priorité est la mise en relation de qualité</p>
                    </div>
                </div>
                <div class="row shop_container">
                    @php
                        $witems = Cart::instance('wishlist')->content()->pluck('id');
                    @endphp
                   @if ($products_latest)
                   @foreach ($products_latest as $products_latests)

                   <div class="col-lg-3 col-md-4 col-6">
                       <div class="product_box text-center">
                           <div class="div_image product_img">
                               @empty ($products_latests->images->first()->thumbnail)

                                <a href="{{route('site.detail-produit', ['id' => $products_latests->id])}}">
                                    <img src="{{asset('assets/images/product/default.png')}}" alt="{{$products_latests->name}}">
                                </a>
                               @else
                                @php
                                $images = explode(",",$products_latests->images->first()->thumbnail);
                                @endphp
                               <a href="{{route('site.detail-produit', ['id' => $products_latests->id])}}">
                                    <img src="{{asset('storage/galerie')}}/{{$images[0]}}" alt="{{$products_latests->name}}">
                                </a>
                               @endempty
                               <div class="product_action_box">
                                   <ul class="list_none pr_action_btn">

                                       @if ($witems->contains($products_latests->id))
                                       <li><a href="#" wire:click.prevent ="removeFromWishList({{$products_latests->id}})" ><i class="icon-heart" style="background-color: red;"></i></a></li>
                                       @else
                                       <li><a href="#" wire:click.prevent ="addToWishlist({{$products_latests->id}},'{{$products_latests->name}}',{{$products_latests->normal_price}})"><i class="icon-heart"></i></a></li>
                                       @endif
                                   </ul>
                               </div>
                           </div>
                           <div class="product_info">
                               <h6 class="product_title"><a href="{{route('site.detail-produit', ['id' => $products_latests->id])}}">{{$products_latests->categorie->name}}</a></h6>
                               <div class="product_price">
                                   <span class="price">{{number_format($products_latests->normal_price,2,"."," ")}} FCFA / mois</span>

                               </div>

                               <div class="rating_wrap">
                                    <div>{{ $products_latests->place_dispo }} place(s) disponible(s)</div>
                                </div>
                               <div class="pr_desc">
                                   <p>{!! $products_latests->short_description !!}</p>
                               </div>
                               <div class="add-to-cart">
                                   <a href="#"  data-bs-toggle="modal" wire:click.prevent='getElementById({{$products_latests->id}})' data-bs-target="#exampleModalCenter" class="btn btn-fill-out btn-radius btn-sm"> <i class="ti-phone"></i> Contacter</a>
                               </div>
                           </div>
                       </div>
                   </div>
                   @endforeach
                   @else
                   <p>Aucun produit n'est dans la base de données</p>

                   @endif

                </div>

            </div>
        </div>
        <!-- END SECTION SHOP -->

        <!-- START SECTION BLOG -->
        <div class="section small_pt pb_70">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-6 col-md-8">
                        <div class="heading_s1 text-center">
                            <h2>Dernières actualités</h2>
                        </div>
                        <p class="leads text-center">Vie étudiante: Conseils actualites</p>
                    </div>
                </div>
                <div class="row justify-content-center">
                    @foreach ($articles as $article)
                    <div class="col-lg-4 col-md-6">
                        <div class="blog_post blog_style1 box_shadow1">
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
                                    <h5 class="blog_title"><a href="{{route('site.detail-article',['id' => $article->id])}}">{{$article->titre}}</a></h5>
                                    <ul class="list_none blog_meta">
                                        <li><a href="{{route('site.detail-article',['id' => $article->id])}}"><i class="ti-calendar"></i>{{ $article->created_at->format('d M o') }}</a></li>
                                        <li><a href="#"><i class="ti-user"></i>{{ $article->auteur }}</a></li>

                                    </ul>
                                    <div>{!! $article->short_description !!}</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endforeach
                    <div>
                        <a href="{{ route('site.articles') }}" class="btn btn-fill-out btn-radius btn-xs float-end">Voir plus</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- END SECTION BLOG -->

    </div>
    <!-- END MAIN CONTENT -->
    @include('livewire.site.partials.modal-Contact')

</div>

@section('custom-scripts')
<script src="{{ asset('assets/js/select2/select2.full.min.js') }}"></script>
<script src="{{ asset('assets/js/select2/select2-custom.js') }}"></script>

<script>
    $("#categorie_id").on('change', function() {
        @this.categorie_id = $(this).val();
    });

    $("#ville_id").on('change', function() {
        @this.ville_id = $(this).val();
    });

    // $("#departement_id").on('change',function() {
    //     @this.departement_id = $(this).val();
    // });

</script>
@endsection
