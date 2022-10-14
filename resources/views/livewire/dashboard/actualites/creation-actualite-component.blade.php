@section('title', 'Articles')
@section('styles')

@endsection

@section('breadcrumb-title', 'Articles')
@section('breadcrumb-items')
<li class="breadcrumb-item">Tableau de bord</li>
<li class="breadcrumb-item active">Ajouter un Article</li>
@endsection
<div>
<!-- Container-fluid starts-->
<div class="container-fluid">
  <div class="row justify-content-center">
    <div class="col-md-12">
      <div class="card">
        <div class="card-header">
            <h5 class="d-inline">Ajouter une Article</h5>
            <a href="{{route('admin.article-index')}}" class="btn  btn-primary btn-sm float-end">les articles</a>
            @if (Session::has('message'))
                <div class="alert alert-success">{{Session::get('message')}}</div>
            @endif
        </div>
        <div class="card-body">
          <form class="form-wizard"  wire:submit.prevent="saveArticle">
            @csrf
            <div class="row">
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label class="form-label" for="titre">Titre de l'article:</label>
                            <input class="form-control" id="titre" type="text" placeholder="le titre de l'article" required="required" wire:model="titre" wire:keyup="generateSlug">
                          </div>

                          <div class="col-md-6 mb-3">
                            <label class="form-label" for="auteur">Nom de l'auteur:</label>
                            <input class="form-control" id="auteur" type="text" placeholder="Nom de l'auteur" wire:model="auteur">
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
                            <label class="form-label" for="slug">slug de l'article:</label>
                            <input class="form-control" id="slug" type="text" placeholder="slug" wire:model="slug">
                        </div>
                        <div class="col-md-6 mb-3">
                            <label class="form-label" for="path">Image:</label>
                            <input class="form-control" id="path" type="file" placeholder="" wire:model="path" accept="">
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
@endsection
