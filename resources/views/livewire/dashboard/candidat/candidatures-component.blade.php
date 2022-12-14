
@section('title', 'Candidats')
@section('styles')
<link rel="stylesheet" type="text/css" href="{{asset('assets/css/datatables.css')}}">
@endsection

@section('breadcrumb-title', 'Candidats')
@section('breadcrumb-items')
<li class="breadcrumb-item">Tableau de bord</li>
<li class="breadcrumb-item active">Liste des Candidatures</li>
@endsection
<div>
    <!-- Container-fluid starts-->
    <div class="container-fluid">
        <div class="row">
            <!-- Zero Configuration  Starts-->
            <div wire:ignore class="col-sm-12">
                <div class="card rounded-0">
                    <div class="  card-header">
                        @if (Session::has('message'))
                        <div class="alert alert-success">{{Session::get('message')}}</div>
                    @endif
                        <h5 class="d-inline">Liste des Candidatures</h5>
                        {{-- <a href="" data-bs-toggle="modal" data-bs-target="#exampleModalCenter" class="btn  btn-primary btn-sm float-end">Ajouter</a> --}}

                    </div>

                    <div class="card-body">
                        <div class="table-responsive table-sm">
                            <table wire:ignore class="display " id="basic-1">
                            <thead>
                                <tr>
                                <th>ID</th>
                                <th>Nom du Candidat</th>
                                <th>Date d'entrée</th>
                                <th>Date de sortie</th>
                                <th>Détails de l'annonce</th>
                                <th>Messages</th>
                                <th>Mention</th>
                                <th>Toutes les Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                @php
                                $i=1
                                @endphp
                                @foreach ($postulers as $postuler)

                                <tr>
                                    <td>{{$i ++}}</td>
                                    <td>{{$postuler->user->name}}</td>
                                    <td>{{$postuler->date_entre}}</td>
                                    <td>
                                    @if ($postuler->indetermine == 0)
                                        {{$postuler->date_de_sortie}}
                                    @else
                                        Indeterminé
                                    @endif
                                    </td>
                                    <td>
                                        <ul>
                                            <li>Nom: {{ $postuler->product->name }}</li>
                                            <li>Loyer: {{ $postuler->product->normal_price }}</li>
                                            <li>Categorie: {{ $postuler->product->categorie->name }}</li>
                                            <li>Types d'annonce: {{ $postuler->product->type_annonce }}</li>
                                            <li>Place disponible: {{ $postuler->product->place_dispo }}</li>
                                            <li>Ville de l'appartement: {{ $postuler->product->ville->name }}</li>
                                        </ul>
                                    </td>
                                    <td>{{$postuler->message}}</td>

                                    <td  class="text-center" >
                                        @if ($postuler->reponse == null)

                                        <a wire:click.prevent="updateRefuse({{$postuler->id}})" type="submit" data-container="body" data-toggle="popover" data-placement="top" title="Décliner"> <i class="fa fa-times fa-2x text-danger"></i> </a>

                                        <a wire:click.prevent="updateValide({{$postuler->id}})" type="submit" data-container="body" data-toggle="popover" data-placement="top" title="Valider"> <i class="fa fa-check-square-o fa-2x text-primary"></i> </a>
                                        @else
                                        @if ($postuler->reponse == "Refusé")
                                        <a type="button" data-container="body" data-toggle="popover" data-placement="top" title="Décliner"> <i class="fa fa-times fa-2x text-danger"></i> </a>
                                        @else
                                        <a type="button" data-container="body" data-toggle="popover" data-placement="top" title="Valider"> <i class="fa fa-check-square-o fa-2x text-primary"></i> </a>
                                        @endif
                                        @endif
                                    </td>
                                    <td>
                                    @if ($postuler->reponse == "Validé")
                                    <a type="button" data-container="body" data-toggle="popover" data-placement="top" title="Chat" href="{{route('contact.par-message',['id' => $postuler->product->user->id])}}"> <i class="fa fa-comment-o fa-2x text-primary"></i> </a>
                                    <a type="button" data-container="body" data-toggle="popover" data-placement="top" title="Téléphone" href="tel:+2295185044"> <i class="fa fa-phone fa-2x text-primary"></i> </a>
                                    <a type="button" data-container="body" data-toggle="popover" data-placement="top" title="Mail" href="mailto:alissouanani@gmail.com"> <i class="fa fa-envelope-o fa-2x text-primary"></i> </a>
                                    <a type="button" data-container="body" data-toggle="popover" data-placement="top" title="Supprimer" href="#" wire:click.prevent="deletePostuler({{$postuler->id}})"> <i class="fa fa-trash-o fa-2x text-danger"></i> </a>
                                    @else
                                    {{-- <a href="" data-bs-toggle="modal" data-bs-target="#exampleModalCenter"> <i class="fa fa-list fa-1x m-5 text-primary"></i> </a> --}}
                                    <a type="button" data-container="body" data-toggle="popover" data-placement="top" title="Supprimer" href="#" wire:click.prevent="deletePostuler({{$postuler->id}})"> <i class="fa fa-trash-o fa-2x text-danger"></i> </a>
                                    @endif
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
    @include('livewire.dashboard.candidat.modal')
</div>


@section('scripts')
<script src="{{ asset('assets/js/bootstrap/popper.min.js') }}"></script>
<script src="{{ asset('assets/js/tooltip-init.js') }}"></script>
<script src="{{ asset('assets/js/popover-custom.js') }}"></script>
<script src="{{asset('assets/js/datatable/datatables/jquery.dataTables.min.js')}}"></script>
<script src="{{asset('assets/js/datatable/datatables/datatable.custom.js')}}"></script>
@endsection
