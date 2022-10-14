
@section('title', 'Annonces')
@section('styles')
<link rel="stylesheet" type="text/css" href="{{asset('assets/css/datatables.css')}}">
@endsection

@section('breadcrumb-title', 'Annonces')
@section('breadcrumb-items')
<li class="breadcrumb-item">Tableau de bord</li>
<li class="breadcrumb-item active">Liste de mes Annonces</li>
@endsection

<!-- Container-fluid starts-->
<div wire:ignore class="container-fluid">
  <div class="row">
    <!-- Zero Configuration  Starts-->
    <div class="col-sm-12">
      <div  class="card rounded-0">
        <div class="  card-header">
            @if (Session::has('message'))
            <div class="alert alert-success">{{Session::get('message')}}</div>
        @endif
        <h5 class="d-inline">Liste de mes Annonces</h5>
        <a href="{{route('admin.product-create')}}" class="btn  btn-primary btn-sm float-end">Ajouter</a>

        </div>
        <div class="card-body">
          <div class="table-responsive">
            <table wire:ignore class="display" id="basic-1">
              <thead>
                <tr>
                  <th>ID</th>
                  <th>Name</th>
                  <th>Departement</th>
                  <th>Ville</th>
                  <th>Disponibilité</th>
                  <th>Nombre de place</th>
                  <th>Prix de location</th>
                  <th>Actions</th>
                </tr>
              </thead>
              <tbody>
                  @php
                      $i = 1;
                  @endphp
                  @foreach ($product as $products)
                  <tr>
                    <td>{{$i ++}}</td>
                    <td>{{$products->name}}</td>
                    <td>{{$products->ville->departement->name}}</td>
                    <td>{{$products->ville->name}}</td>
                    <td>{{$products->disponibilite}}</td>
                    <td>{{$products->place_dispo}}</td>
                    <td>{{$products->normal_price}}</td>
                    <td>
                      <a href="{{route('admin.detail-produit',['id' => $products->id])}}"> <i class="fa fa-list fa-1x m-5 text-primary"></i> </a>
                      <a href="{{route('admin.product-edit',['id' => $products->id])}}"> <i class="fa fa-edit fa-1x m-5 text-warning"></i> </a>
                      <a href="#" wire:click.prevent="deleteProduct({{$products->id}})"> <i class="fa fa-trash-o fa-1x text-danger"></i> </a>
                    </td>
                  </tr>
                  @endforeach

              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
    <!-- Zero Configuration  Ends-->

  </div>
</div>
<!-- Container-fluid Ends-->

@section('scripts')
<script src="{{asset('assets/js/datatable/datatables/jquery.dataTables.min.js')}}"></script>
<script src="{{asset('assets/js/datatable/datatables/datatable.custom.js')}}"></script>
@endsection
