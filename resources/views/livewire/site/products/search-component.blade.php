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
                        <h1>Annonces</h1>
                    </div>
                </div>
                <div class="col-md-6 ">
                    <ol class="breadcrumb justify-content-md-end">
                        <li class="breadcrumb-item"><a href="#">Accueil</a></li>
                        <li class="breadcrumb-item active"><a href="#">Annonces</a></li>
                        <li class="breadcrumb-item active"><a href="#">Rechercher</a></li>
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

<!-- START SECTION SHOP -->
<div class="section">
	<div class="container">
    	<div class="row">
			<div class="col-lg-9">
            	<div class="row align-items-center mb-4 pb-1">
                    <div class="col-12">
                        <div class="product_header">
                            <div class="product_header_left">
                                <div class="custom_select">
                                    <select class="form-control form-control-sm" wire:model="sorting">
                                        <option value="default">Tri par d??faut</option>
                                        <option value="date">Trier par date</option>
                                        <option value="price">Trier par prix : dans l'ordre croissant</option>
                                        <option value="price-desc">Trier par prix : dans l'ordre d??croissant</option>
                                    </select>
                                </div>
                            </div>
                            <div class="product_header_right">
                            	<div class="products_view">
                                    <a href="javascript:Void(0);" class="shorting_icon grid"><i class="ti-view-grid"></i></a>
                                    <a href="javascript:Void(0);" class="shorting_icon list active"><i class="ti-layout-list-thumb"></i></a>
                                </div>
                                <div class="custom_select">
                                    <select class="form-control form-control-sm" wire:model="pagesize">
                                        <option value="">Afficher</option>
                                        <option value="6">6</option>
                                        <option value="9">9</option>
                                        <option value="12">12</option>
                                        <option value="18">18</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row shop_container list">
                    @php
                        $witems = Cart::instance('wishlist')->content()->pluck('id');
                    @endphp

                  @forelse ($products as $product)
                  <div class="col-md-4 col-6">
                      <div class="product text-center">
                          <div class="div_image product_img">
                            @empty ($product->images->first()->thumbnail)
                            <a href="{{route('site.detail-produit', ['id' => $product->id])}}">
                                <img src="{{asset('assets/images/product/default.png')}}" alt="{{$product->name}}">
                            </a>
                            @else
                            @php
                            $images = explode(",",$product->images->first()->thumbnail);
                            @endphp
                            <a href="{{route('site.detail-produit', ['id' => $product->id])}}">
                             <img src="{{asset('storage/galerie')}}/{{$images[0]}}" alt="{{$product->name}}">
                             </a>
                            @endempty
                              <div class="product_action_box">
                                  <ul class="list_none pr_action_btn">
                                      <li class="add-to-cart"><a href="#" data-bs-toggle="modal" wire:click.prevent='getElementById({{$product->id}})' data-bs-target="#exampleModalCenter" ><i class=""></i> Contacter</a></li>

                                      @if ($witems->contains($product->id))
                                      <li><a href="#" wire:click.prevent ="removeFromWishList({{$product->id}})"><i class="icon-heart" style="background-color: red;"></i></a></li>
                                      @else
                                      <li><a href="#" wire:click.prevent ="addToWishlist({{$product->id}},'{{$product->name}}',{{$product->normal_price}})"><i class="icon-heart"></i></a></li>
                                      @endif

                                  </ul>
                              </div>
                          </div>
                          <div class="product_info">
                              <h6 class="product_title"><a href="{{route('site.detail-produit', ['id' => $product->id])}}">{{$product->categorie->name}}</a></h6>
                              <div class="product_price">
                                  <span class="price">{{number_format($product->normal_price,2,"."," ")}} FCFA / mois</span>
                              </div>
                              <div class="rating_wrap">
                                <div>{{ $product->place_dispo }} place(s) disponible(s)</div>
                            </div>
                              <div class="pr_desc">
                                  <p>{!! $product->short_description !!}</p>
                              </div>
                              <div class="pr_switch_wrap">

                              </div>
                              <div class="list_product_action_box">
                                  <ul class="list_none pr_action_btn justify-content-center">
                                      <li class="add-to-cart mt-3"><a data-bs-toggle="modal" wire:click.prevent='getElementById({{$product->id}})' data-bs-target="#exampleModalCenter"><i class=""></i> Contacter</a></li>

                                  </ul>
                              </div>
                          </div>
                      </div>
                  </div>
                  @empty
                  <p>Aucun resultat n'est trouv?? pour " {{ $this->search }} "</p>
                 @endforelse
                 {{$products->links()}}
                </div>

        	</div>
            <div class="col-lg-3 order-lg-first mt-4 pt-2 mt-lg-0 pt-lg-0">
            	<div class="sidebar">
                	<div class="widget">
                        <h5 class="widget_title">Cat??gories</h5>
                        <ul class="widget_categories" >
                            @foreach($category as $categorys)
                                <li style="margin-left: 10px">???
                                    <a href="{{route('site.produit-categorie',['id' => $categorys->id])}}"><span class="categories_name">{{$categorys->name}}</span></a>
                                </li>
                            @endforeach
                        </ul>
                    </div>
                    <div class="widget">
                    	<h5 class="widget_title">Filter</h5>
                        <span>Price: <span class="text-info">{{$min_price}} FCFA - {{$max_price}} FCFA</span></span>
                        <div >
                            <div id="slider" wire:ignore ></div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END SECTION SHOP -->

<!-- START SECTION SUBSCRIBE NEWSLETTER -->
<div class="section bg_default small_pt small_pb">
	<div class="container">
    	<div class="row align-items-center">
            <div class="col-md-6">
                <div class="heading_s1 mb-md-0 heading_light">
                    <h3>Abonnez-vous ?? notre newsletter</h3>
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
@include('livewire.site.partials.modal-Contact')

@section('script-super')
<script>

    var slider = document.getElementById('slider');
    noUiSlider.create(slider,{
        start : [1, 100000],
        connect : true,
        range : {
            'min' : 1,
            'max' : 100000,
        },

        pips : {
            mode : 'steps',
            stepped : true,
            density : 4,
        }
    });
    slider.noUiSlider.on('update', function (value) {
        @this.set('min_price', value[0]);
        @this.set('max_price', value[1]);
    });
</script>
@endsection
</div>

