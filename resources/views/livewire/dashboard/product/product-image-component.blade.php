@section('title', 'Produits')
@section('styles')

    <link rel="stylesheet" type="text/css" href="{{asset('assets/css/owlcarousel.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('assets/css/rating.css')}}">
@endsection

@section('breadcrumb-title', 'Produits')
@section('breadcrumb-items')
    <li class="breadcrumb-item">Annonce</li>
    <li class="breadcrumb-item active">Détail d'une annone</li>
@endsection

<div>
    <div wire:ignore class="container-fluid">
        <div class="card">
            <div class="card-header">
                @if (Session::has('message'))
                    <div class="alert alert-success">{{ Session::get('message') }}</div>
                @endif
                <h5>Galerie de l'annonce</h5>
                <div class="d-inline" >
                    <a class="btn btn-primary btn-sm float-end" style="margin-left: 20px" href="{{route('admin.product-index')}}">Voir mes annonces </a>
                </div>
                @empty ($product->images->first()->thumbnail)
                <div class="d-inline p-2">
                    <a data-bs-toggle="modal" data-bs-target="#ModalProductImage"
                        class="btn btn-primary btn-sm float-end ">Ajouter </a>
                </div>
                @else
                <div wire:ignore class="d-inline p-2" >

                    <a wire:click.prevent='getElementById({{$product->id}})' data-bs-toggle="modal" data-bs-target="#ModalProductImage"
                        class="btn btn-primary btn-sm float-end">Modifier </a>
                </div>
                @endempty

            </div>

            <div class="row product-page-main">
                <div class="col-xl-4">
                @empty ($product->images->first()->full)
                    <div class="product-slider owl-carousel owl-theme" id="sync1">
                        <div class="item">
                            <img
                                src="{{asset('assets/images/product/default.png')}}"
                                alt="{{ $product->name }}">
                            </div>
                    </div>
                    <div class="owl-carousel owl-theme" id="sync2">
                        <div class="item">
                            <img
                                src="{{asset('assets/images/product/default.png')}}"
                                alt="{{ $product->name }}">
                            </div>
                    </div>


                @else
                    @php
                         $images = explode(",",$product->images->first()->full);

                    @endphp


                         <div class="product-slider owl-carousel owl-theme" id="sync1">
                            @foreach ($images as $image)
                                <div class="item">
                                    <img
                                        src="{{asset('storage/galerie')}}/{{$image}}"
                                        alt="{{ $product->name }}">
                                </div>
                            @endforeach


                         </div>
                         <div class="owl-carousel owl-theme" id="sync2">
                            @foreach ($images as $image)
                            <div class="item">
                                <img
                                    src="{{asset('storage/galerie')}}/{{$image}}"
                                    alt="{{ $product->name }}">
                           </div>
                            @endforeach


                         </div>

                @endempty
                </div>

                <div class="col-xl-8">
                    <div class="product-page-details">
                        <h5>{{ $product->name }}</h5>
                    </div>
                    <hr>
                    <p>{{ $product->short_description }}</p>
                    <div class="product-price digits">
                       ${{ $product->normal_price }}
                    </div>
                    <hr>
                    <div class="mt-4">
                    <ul class="mt-4">
                        <li>Nom du propriètaire : {{ $product->user->name }}
                        </li>
                        <li>Tpe de location : {{ $product->type_annonce }}
                        </li>
                        <li>Departement : {{ $product->ville->departement->name }}</li>
                        <li>Ville : {{ $product->ville->name }}</li>
                        <li>Quartier : {{ $product->quartier }}</li>
                        <li>Disponible? :
                                @if ($product->disponibilite == 1)
                                    OUI
                                @else
                                    NON
                                @endif
                            </li>
                        <li>Place Libre : {{ $product->place_dispo }}</li>
                        <li>Type de chambre : {{ $product->categorie->name }}</li>
                        </ul>
                    </div>
                    <hr>
                    <ul class="product-color m-t-15">
                        <li class="bg-primary"></li>
                        <li class="bg-secondary"></li>
                        <li class="bg-success"></li>
                        <li class="bg-info"></li>
                        <li class="bg-warning"></li>
                    </ul>

                </div>
            </div>
        </div>
        <div class="card">
            <div class="row product-page-main">
                <div class="col-sm-12">
                    <ul class="nav nav-tabs border-tab mb-0" id="top-tab" role="tablist">
                        {{-- <li class="nav-item"><a class="nav-link " id="top-home-tab" data-bs-toggle="tab"
                                href="#top-home" role="tab" aria-controls="top-home" aria-selected="false">Febric</a>
                            <div class="material-border"></div>
                        </li>
                        <li class="nav-item"><a class="nav-link" id="profile-top-tab" data-bs-toggle="tab"
                                href="#top-profile" role="tab" aria-controls="top-profile"
                                aria-selected="false">Video</a>
                            <div class="material-border"></div>
                        </li> --}}
                        <li class="nav-item"><a class="nav-link active" id="contact-top-tab" data-bs-toggle="tab"
                                href="#top-contact" role="tab" aria-controls="top-contact"
                                aria-selected="true">Details</a>
                            <div class="material-border"></div>
                        </li>
                        {{-- <li class="nav-item"><a class="nav-link" id="brand-top-tab" data-bs-toggle="tab"
                                href="#top-brand" role="tab" aria-controls="top-brand" aria-selected="true">Brand</a>
                            <div class="material-border"></div>
                        </li> --}}
                    </ul>
                    <div class="tab-content" id="top-tabContent">
                        <div class="tab-pane fade " id="top-home" role="tabpanel"
                            aria-labelledby="top-home-tab">
                            <p class="mb-0 m-t-20">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
                                eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis
                                aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
                                pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia
                                deserunt mollit anim id est laborum."</p>
                            <p class="mb-0 m-t-20">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
                                eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis
                                aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
                                pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia
                                deserunt mollit anim id est laborum."</p>
                        </div>
                        <div class="tab-pane fade" id="top-profile" role="tabpanel" aria-labelledby="profile-top-tab">
                            <p class="mb-0 m-t-20">Lorem Ipsum is simply dummy text of the printing and typesetting
                                industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
                                when an unknown printer took a galley of type and scrambled it to make a type specimen
                                book. It has survived not only five centuries, but also the leap into electronic
                                typesetting, remaining essentially unchanged. It was popularised in the 1960s with the
                                release of Letraset sheets containing Lorem Ipsum passages, and more recently with
                                desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>
                        </div>
                        <div class="tab-pane fade active show" id="top-contact" role="tabpanel" aria-labelledby="contact-top-tab">
                            <ul>
                                <li>Nom du propriètaire : {{ $product->user->name }}
                                </li>
                                <li>Tpe de location : {{ $product->type_annonce }}
                                </li>
                                <li>Departement : {{ $product->ville->departement->name }}</li>
                                <li>Ville : {{ $product->ville->name }}</li>
                                <li>Quartier : {{ $product->quartier }}</li>
                                <li>Disponible? :
                                        @if ($product->disponibilite == 1)
                                            OUI
                                        @else
                                            NON
                                        @endif
                                    </li>
                                <li>Place Libre : {{ $product->place_dispo }}</li>
                                <li>Type de chambre : {{ $product->categorie->name }}</li>
                            </ul>
                        </div>
                        <div class="tab-pane fade" id="top-brand" role="tabpanel" aria-labelledby="brand-top-tab">
                            <p class="mb-0 m-t-20">Lorem Ipsum is simply dummy text of the printing and typesetting
                                industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
                                when an unknown printer took a galley of type and scrambled it to make a type specimen
                                book. It has survived not only five centuries, but also the leap into electronic
                                typesetting, remaining essentially unchanged. It was popularised in the 1960s with the
                                release of Letraset sheets containing Lorem Ipsum passages, and more recently with
                                desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    @include('livewire.dashboard.product.modalImage')
</div>
<!-- Container-fluid Ends-->
@section('scripts')
    <script src="{{asset('assets/js/owlcarousel/owl.carousel.js')}}"></script>
    <script src="{{asset('assets/js/owlcarousel/owl.carousel.js')}}"></script>
    <script src="{{asset('assets/js/rating/jquery.barrating.js')}}"></script>
    <script src="{{asset('assets/js/rating/rating-script.js')}}"></script>
    <script src="{{asset('assets/js/ecommerce.js')}}"></script>
@endsection
