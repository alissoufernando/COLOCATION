@section('title', 'Annonces')
@section('styles')

@endsection

@section('breadcrumb-title', 'Annonces')
@section('breadcrumb-items')
<li class="breadcrumb-item">Tableau de bord</li>
<li class="breadcrumb-item active">Modifier une annonce</li>
@endsection
<div>
<!-- Container-fluid starts-->
<div class="container-fluid">
  <div class="row justify-content-center">
    <div class="col-md-12">
      <div class="card">
        <div class="card-header">
            <h5 class="d-inline">modifier une annoce</h5>
            <a href="{{route('admin.product-index')}}" class="btn  btn-primary btn-sm float-end">Mes annonce</a>
            @if (Session::has('message'))
                <div class="alert alert-success">{{Session::get('message')}}</div>
            @endif
        </div>
        <div class="card-body">
          <form class="form-wizard"  wire:submit.prevent="updateProduct">
            @csrf
            <div class="row">
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label class="form-label" for="name">Nom de l'annonce:</label>
                            <input class="form-control" id="name" type="text" placeholder="Nom du produit" required="required" wire:model="name" wire:keyup="generateSlug">
                          </div>
                          <div class="col-md-6 mb-3">
                              <label class="form-label" for="slug">slug de l'annonce:</label>
                              <input class="form-control" id="slug" type="text" placeholder="slug" wire:model="slug">
                          </div>
                          <div class="col-md-6 mb-3">
                            <label class="form-label" for="normal_price">Prix de location:</label>
                            <input class="form-control" id="normal_price" type="text" placeholder="prix vente" wire:model="normal_price">
                          </div>
                          <div class="col-md-6 mb-3">
                              <label class="form-label" for="commune">commune:</label>
                              <input class="form-control" id="commune" type="text" placeholder="commune" wire:model="commune">
                          </div>
                          <div class="col-md-6 mb-3">
                            <label class="form-label" for="departement">Departements:</label>
                            <input class="form-control" id="departement" type="text" placeholder="departement" wire:model="departement">
                        </div>
                            <div class="col-md-6 mb-3">
                              <label class="form-label" for="categorie_id">Catégories:</label>
                                  <select class="form-select" required="" wire:model="categorie_id">
                                      <option value="0">None</option>
                                      @foreach ($categorie as $categories)
                                      <option value="{{$categories->id}}">{{$categories->name}}</option>
                                      @endforeach
                                  </select>
                                  <div class="invalid-feedback">veillez selectionner une categorie</div>
                            </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="row">

                        <div class="col-md-6 mb-3">
                          <label class="form-label" for="place_dispo">Nombre de place disponible:</label>
                          <input class="form-control" id="place_dispo" type="text" placeholder="nombre de place disponible" wire:model="place_dispo">
                        </div>
                        <div class="col-md-12">
                            <label class="form-label" for="short_description">coute Description:</label>
                            <textarea class="form-control" id="short_description" rows="3" wire:model="short_description"></textarea>
                        </div>

                        <div class="col-md-12">
                            <label class="form-label" for="description">Description:</label>
                            <textarea class="form-control" id="description" rows="3" wire:model="description"></textarea>
                        </div>
                    </div>
                </div>



                    <div class="col-12 mt-4">
                        <button type="submit" class="btn btn-primary btn-sm" >Ajouter</button>
                    </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Container-fluid Ends-->
</div>

@section('scripts')
<script src="{{asset('assets/js/form-validation-custom.js')}}"></script>
<script src="{{asset('assets/js/form-wizard/form-wizard.js')}}"></script>
@endsection
