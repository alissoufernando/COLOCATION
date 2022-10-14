@section('title', 'Mon compte')
@section('styles')
@endsection

@section('breadcrumb-title', 'Mon compte')
@section('breadcrumb-items')
    <li class="breadcrumb-item">Tableau de bord</li>
    <li class="breadcrumb-item active">Mon compte</li>
@endsection



<div>
    <!-- Container-fluid starts-->
    <div class="container-fluid">
        <div class="user-profile">
          <div class="row">
            <!-- user profile first-style start-->
            <div class="col-sm-12">
              <div class="card hovercard text-center">
                <div class="cardheader"></div>
                <div class="user-image">
                  <div class="avatar">
                    @empty($ImageUser)
                    <img src="{{asset('assets/images/product/default.png')}}">
                    @else
                    <img alt="" src="{{asset('storage')}}/{{$ImageUser->path}}">
                    @endempty
                </div>
                  <div class="icon-wrapper" wire:click.prevent="getId({{$userProfile->id}})" data-bs-toggle="modal" data-bs-target="#ModalImage" ><i class="icofont icofont-pencil-alt-5"></i></div>
                </div>
                <div class="info">
                  <div class="row">
                    <div class="col-sm-6 col-lg-4 order-sm-1 order-xl-0">
                      <div class="row">
                        <div class="col-md-6">
                          <div class="ttl-info text-left">
                            <h6><i class="fa fa-envelope"></i>   Email</h6><span>{{ $userProfile->email }}</span>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="ttl-info text-left">
                            <h6><i class="fa fa-calendar"></i>    Date de naissance</h6><span>{{ $userProfile->birthday }}</span>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-sm-12 col-lg-4 order-sm-0 order-xl-1">
                      <div class="user-designation">
                        <div class="title"><a target="_blank" href="user-profile.html">{{ $userProfile->name }}</a></div>
                        <div class="desc mt-2">{{ $userProfile->profession }}</div>
                      </div>
                    </div>
                    <div class="col-sm-6 col-lg-4 order-sm-2 order-xl-2">
                      <div class="row">
                        <div class="col-md-6">
                          <div class="ttl-info text-left">
                            <h6><i class="fa fa-phone"></i>   Téléphone</h6><span>{{ $userProfile->phone }}</span>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="ttl-info text-left">
                            <h6><i class="fa fa-location-arrow"></i>   Adresse</h6><span>{{ $userProfile->adresse }}</span>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <hr>
                  <div class="social-media">
                    <ul class="list-inline">
                      <li class="list-inline-item"><a href="{{ $userProfile->link_facebook }}"><i class="fa fa-facebook"></i></a></li>
                      <li class="list-inline-item"><a href="{{ $userProfile->link_twitter }}"><i class="fa fa-twitter"></i></a></li>
                      <li class="list-inline-item"><a href="{{ $userProfile->link_instagram }}"><i class="fa fa-instagram"></i></a></li>
                    </ul>
                  </div>
                  <div class="follow">
                    <div class="row">
                      <div class="col-6 text-md-right border-right">
                        <div class="follow-num counter">
                        <a href="" class="btn  btn-primary btn-sm " data-bs-toggle="modal" data-bs-target="#exampleModalCenter" wire:click.prevent='getElementById({{$userProfile->id}})'>Modifier</a>
                        </div>
                      </div>
                      <div class="col-6 text-md-left">
                        <div class="follow-num counter">
                            <form action="{{ route('logout') }}" method="POST">
                                @csrf
                                <button {{ route('logout') }}type="submit" class="btn btn-primary btn-sm ">Déconnexion</button>
                            </form>
                        </div>

                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- user profile first-style end-->

          </div>
        </div>
      </div>
      <!-- Container-fluid Ends-->
    @include('livewire.dashboard.profil.modalImage')
    @include('livewire.dashboard.profil.modal')
    <!-- Container-fluid Ends-->
</div>


@section('scripts')
@endsection
