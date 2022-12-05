@section('title', 'Annonces')
@section('styles')
<link rel="stylesheet" type="text/css" href="{{ asset('assets/css/select2.css') }}">
@endsection

@section('breadcrumb-title', 'Annonces')
@section('breadcrumb-items')
<li class="breadcrumb-item">Tableau de bord</li>
<li class="breadcrumb-item active">Ajouter un annonce</li>
@endsection
<div>
<!-- Container-fluid starts-->
<div class="container-fluid">
  <div class="row justify-content-center">
    <div class="col-md-12">
      <div class="card">
        <div class="card-header">
            <h5 class="d-inline">Ajouter une annonce</h5>
            <a href="{{route('admin.mesproduct-index')}}" class="btn  btn-primary btn-sm float-end">Mes annonces</a>
            @if (Session::has('message'))
                <div class="alert alert-success">{{Session::get('message')}}</div>
            @endif
        </div>
        <div class="card-body">
          <form class="form-wizard"  wire:submit.prevent="saveProduct">
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


                        <div class="col-md-6 mb-3" wire:ignore>
                              <label class="form-label" for="categorie_id">Catégories:</label>
                                  <select class="form-select js-example-basic-single" id="categorie_id"  required="" wire:model="categorie_id">
                                      <option value="0">None</option>
                                      @foreach ($categorie as $categories)
                                      <option value="{{$categories->id}}">{{$categories->name}}</option>
                                      @endforeach
                                  </select>
                                  <div class="invalid-feedback">veillez selectionner une categorie</div>
                        </div>
                        <div class="col-md-12" wire:ignore >
                                <label class="form-label" for="short_description">coute Description:</label>
                                <textarea class="form-control" id="short_description" rows="3" wire:model="short_description"></textarea>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="row">

                        <div class="col-md-6 mb-3">
                          <label class="form-label" for="place_dispo">Nombre de place disponible:</label>
                          <input class="form-control" id="place_dispo" type="text" placeholder="nombre de place disponible" wire:model="place_dispo">
                        </div>
                        <div class="col-md-6 mb-3">
                            <label class="form-label" for="ville_id">Ville:</label>
                            <select class="form-select" id="ville_id" required="" wire:model="ville_id">
                                <option value="0">None</option>
                                @foreach ($villes as $ville)
                                <option value="{{$ville->id}}">{{$ville->name}}</option>
                                @endforeach
                            </select>
                          </div>
                          <div class="col-md-6 mb-3">
                            <label class="form-label" for="quartier">Quantier:</label>
                            <input class="form-control" id="quartier" type="text" placeholder="quartier" wire:model="quartier">
                        </div>
                          <div class="col-md-6 mb-3">
                            <label class="form-label" for="type_annonce">Type d'annonce:</label>
                            <select class="form-select" required="" wire:model="type_annonce">
                                <option value="LOCATION">Location</option>
                                <option value="COLOCATION">Colocation</option>
                            </select>
                          </div>


                        <div class="col-md-12" wire:ignore >
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
<script src="{{ asset('assets/js/select2/select2.full.min.js') }}"></script>
<script src="{{ asset('assets/js/select2/select2-custom.js') }}"></script>
<script>
    $(function(){
        tinymce.init({
            selector:'#short_description',
            setup:function(editor){
                editor.on('Change', function(e){
                    tinyMCE.triggerSave();
                    var sd_data = $('#short_description').val();
                    @this.set('short_description', sd_data);
                });
            }
        });

        tinymce.init({
            selector:'#description',
            setup:function(editor){
                editor.on('Change', function(e){
                    tinyMCE.triggerSave();
                    var sd_data = $('#description').val();
                    @this.set('description', sd_data);
                });
            }
        });
    });
</script>
<script>
    $("#categorie_id").on('change', function() {
        @this.categorie_id = $(this).val();
    });

    // $("#ville_id").on('change', function() {
    //     @this.ville_id = $(this).val();
    // });

    $("#departement_id").on('change',function() {
        @this.departement_id = $(this).val();
    });

</script>
@endsection
