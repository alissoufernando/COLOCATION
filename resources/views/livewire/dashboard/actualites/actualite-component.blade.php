
@section('title', 'Articles')
@section('styles')
<link rel="stylesheet" type="text/css" href="{{asset('assets/css/datatables.css')}}">
@endsection

@section('breadcrumb-title', 'Articles')
@section('breadcrumb-items')
<li class="breadcrumb-item">Tableau de bord</li>
<li class="breadcrumb-item active">Liste des Articles</li>
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
        <h5 class="d-inline">Liste des Articles</h5>
        <a href="{{route('admin.article-create')}}" class="btn  btn-primary btn-sm float-end">Ajouter</a>

        </div>
        <div class="card-body">
          <div class="table-responsive">
            <table wire:ignore class="display" id="basic-1">
              <thead>
                <tr>
                  <th>ID</th>
                  <th>image</th>
                  <th>Nom de l'auteur</th>
                  <th>Titre de l'article</th>
                  <th>Description</th>
                  <th>Actions</th>
                </tr>
              </thead>
              <tbody>
                  @php
                      $i = 1;
                  @endphp
                  @foreach ($articles as $article)
                  <tr>
                    <td>{{$i ++}}</td>
                    <td>
                    <img alt="" src="{{asset('storage')}}/{{$article->path}}" width="40" height="40">
                    </td>
                    <td>{{$article->auteur}}</td>
                    <td>{{$article->titre}}</td>
                    <td>{{$article->short_description}}</td>
                    <td>
                      <a href="{{route('site.detail-article',['id' => $article->id])}}"> <i class="fa fa-list fa-1x m-5 text-primary"></i> </a>
                      <a href="{{route('admin.article-edit',['id' => $article->id])}}"> <i class="fa fa-edit fa-1x m-5 text-warning"></i> </a>
                      <a href="#" wire:click.prevent="deleteArticle({{$article->id}})"> <i class="fa fa-trash-o fa-1x text-danger"></i> </a>
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
