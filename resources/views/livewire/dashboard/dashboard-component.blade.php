@section('title', 'Dashboard')
@section('styles')
<link rel="stylesheet" type="text/css" href="{{ asset('assets/css/date-picker.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('assets/css/owlcarousel.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('assets/css/prism.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('assets/css/whether-icon.css') }}">
@endsection

@section('breadcrumb-title', 'Dashboard')
@section('breadcrumb-items')
<li class="breadcrumb-item active">Dashboard</li>
@endsection

<!-- Container-fluid starts-->
<div class="container-fluid">
  <div class="row">
    <div class="col-sm-12">
      <div class="card">
        <div class="card-header">
          <h5>Statistiques</h5><span>lorem ipsum dolor sit amet, consectetur adipisicing elit</span>
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-md-3">
                  <div class="card o-hidden">
                    <div class="bg-primary b-r-4 card-body">
                      <div class="media static-top-widget">
                        <div class="align-self-center text-center"><i data-feather="navigation"></i></div>
                        <div class="media-body"><span class="m-0">Articles</span>
                          <h4 class="mb-0 counter">{{ $articles->count() }}</h4><i class="icon-bg" data-feather="navigation"></i>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="card o-hidden">
                    <div class="bg-secondary b-r-4 card-body">
                      <div class="media static-top-widget">
                        <div class="align-self-center text-center"><i data-feather="box"></i></div>
                        <div class="media-body"><span class="m-0">Annonces</span>
                          <h4 class="mb-0 counter">{{ $products->count() }}</h4><i class="icon-bg" data-feather="box"></i>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="card o-hidden">
                    <div class="bg-primary b-r-4 card-body">
                      <div class="media static-top-widget">
                        <div class="align-self-center text-center"><i data-feather="message-square"></i></div>
                        <div class="media-body"><span class="m-0">Messages</span>
                          <h4 class="mb-0 counter">{{ $messages->count() }}</h4><i class="icon-bg" data-feather="message-square"></i>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="card o-hidden">
                    <div class="bg-primary b-r-4 card-body">
                      <div class="media static-top-widget">
                        <div class="align-self-center text-center"><i data-feather="users"></i></div>
                        <div class="media-body"><span class="m-0">Total utilisateurs</span>
                          <h4 class="mb-0 counter">{{ $users->count() }}</h4><i class="icon-bg" data-feather="users"></i>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-sm-6">
                    <div class="card">
                      <div class="card-header">
                        <h5>Statistiques des products</h5>
                      </div>
                      <div class="card-body">
                        <div class="row">
                          <div class="col-xl-12 xl-100">
                            <div class="row more-projects">
                              <div class="col-sm-6 xl-4">
                                <div class="projects-main">
                                  <div class="project-content">
                                    <h6>Total Colocation</h6>
                                    <h5 class="counter mb-0">{{ $cproducts->count() }}</h5>
                                  </div>
                                  <div class="project-small-chart-1 project-small"></div>
                                </div>
                              </div>
                              <div class="col-sm-6 xl-4">
                                <div class="projects-main">
                                  <div class="project-content">
                                    <h6>Total Location</h6>
                                    <h5 class="counter mb-0">{{ $lproducts->count() }}</h5>
                                  </div>
                                  <div class="project-small-chart-2 project-small"></div>
                                </div>
                              </div>
                              <div class="col-sm-6 xl-4">
                                <div class="projects-main">
                                  <div class="project-content">
                                    <h6>Total supprimer</h6>
                                    <h5 class="counter mb-0">{{ $dproducts->count() }}</h5>
                                  </div>
                                  <div class="project-small-chart-3 project-small"></div>
                                </div>
                              </div>
                              <div class="col-sm-6 xl-4">
                                <div class="projects-main">
                                  <div class="project-content">
                                    <h6>Total disponible</h6>
                                    <h5 class="counter mb-0">{{ $diproducts->count() }}</h5>
                                  </div>
                                  <div class="project-small-chart-4 project-small"></div>
                                </div>
                              </div>
                              <div class="col-sm-6 xl-4">
                                <div class="projects-main">
                                  <div class="project-content">
                                    <h6>Total Indisponible</h6>
                                    <h5 class="counter mb-0">{{ $indproducts->count() }}</h5>
                                  </div>
                                  <div class="project-small-chart-5 project-small"></div>
                                </div>
                              </div>
                              <div class="col-sm-6 xl-4">
                                <div class="projects-main">
                                  <div class="project-content">
                                    <h6>Total en ligne</h6>
                                    <h5 class="counter mb-0">{{ $linproducts->count() }}</h5>
                                  </div>
                                  <div class="project-small-chart-6 project-small"></div>
                                </div>
                              </div>
                            </div>
                          </div>

                        </div>

                      </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="card">
                      <div class="card-header">
                        <h5>Statistiques des demandes</h5>
                      </div>
                      <div class="card-body">
                        <div class="row">
                          <div class="col-xl-12 xl-100">
                            <div class="row more-projects">
                              <div class="col-sm-6 xl-4">
                                <div class="projects-main">
                                  <div class="project-content">
                                    <h6>Total demande</h6>
                                    <h5 class="counter mb-0">{{ $postulers->count() }}</h5>
                                  </div>
                                  <div class="project-small-chart-1 project-small"></div>
                                </div>
                              </div>
                              <div class="col-sm-6 xl-4">
                                <div class="projects-main">
                                  <div class="project-content">
                                    <h6>Total demande validée</h6>
                                    <h5 class="counter mb-0">{{ $vpostulers->count() }}</h5>
                                  </div>
                                  <div class="project-small-chart-2 project-small"></div>
                                </div>
                              </div>
                              <div class="col-sm-6 xl-4">
                                <div class="projects-main">
                                  <div class="project-content">
                                    <h6>Total demande supprimer</h6>
                                    <h5 class="counter mb-0">{{ $dpostulers->count() }}</h5>
                                  </div>
                                  <div class="project-small-chart-3 project-small"></div>
                                </div>
                              </div>
                              <div class="col-sm-6 xl-4">
                                <div class="projects-main">
                                  <div class="project-content">
                                    <h6>Total demande declinée</h6>
                                    <h5 class="counter mb-0">{{ $rpostulers->count() }}</h5>
                                  </div>
                                  <div class="project-small-chart-4 project-small"></div>
                                </div>
                              </div>
                              <div class="col-sm-6 xl-4">
                                <div class="projects-main">
                                  <div class="project-content">
                                    <h6>Total demande en attente</h6>
                                    <h5 class="counter mb-0">{{ $attpostulers->count() }}</h5>
                                  </div>
                                  <div class="project-small-chart-5 project-small"></div>
                                </div>
                              </div>
                              {{-- <div class="col-sm-6 xl-4">
                                <div class="projects-main">
                                  <div class="project-content">
                                    <h6>Total demande </h6>
                                    <h5 class="counter mb-0">5</h5>
                                  </div>
                                  <div class="project-small-chart-6 project-small"></div>
                                </div>
                              </div> --}}
                            </div>
                          </div>

                        </div>

                      </div>
                    </div>
                </div>
              </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Container-fluid Ends-->
@section('scripts')
<script src="../assets/js/prism/prism.min.js"></script>
<script src="../assets/js/clipboard/clipboard.min.js"></script>
<script src="../assets/js/counter/jquery.waypoints.min.js"></script>
<script src="../assets/js/counter/jquery.counterup.min.js"></script>
<script src="../assets/js/counter/counter-custom.js"></script>
<script src="../assets/js/custom-card/custom-card.js"></script>
<script src="../assets/js/owlcarousel/owl.carousel.js"></script>
<script src="../assets/js/datepicker/date-picker/datepicker.js"></script>
<script src="../assets/js/datepicker/date-picker/datepicker.en.js"></script>
<script src="../assets/js/datepicker/date-picker/datepicker.custom.js"></script>
<script src="../assets/js/general-widget.js"></script>
<script src="../assets/js/height-equal.js"></script>
@endsection
