@section('title', 'Utilisateur')
@section('styles')
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/datatables.css') }}">
@endsection

@section('breadcrumb-title', 'Utilisateur')
@section('breadcrumb-items')
    <li class="breadcrumb-item">Tableau de bord</li>
    <li class="breadcrumb-item active">Liste des utilisateurs</li>
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
                            <div class="alert alert-success">{{ Session::get('message') }}</div>
                        @endif

                        <h5 class="d-inline">Liste des utilisateurs</h5>
                        <a href="" data-bs-toggle="modal" data-bs-target="#ModalUser"
                            class="btn  btn-primary btn-sm float-end">Ajouter</a>

                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table wire:ignore class="display" id="basic-1">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Image</th>
                                        <th>Nom</th>
                                        <th>Téléphone</th>
                                        <th>Email</th>
                                        <th>Rôle</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php
                                        $i = 1;
                                    @endphp
                                    @foreach ($users as $user)
                                        <tr>
                                            <td>{{ $i++ }}</td>
                                            <td>
                                                @empty($user->image_user->path)
                                                <img class="" src="../assets/images/user/1.png" alt="" width="40" height="40">
                                                @else
                                                <img class="" src="{{asset('storage')}}/{{$user->image_user->path}}" alt="" width="40" height="40">
                                                @endempty
                                            </td>
                                            <td>{{ $user->name }}</td>
                                            <td>{{ $user->phone }}</td>
                                            <td>{{ $user->email }}</td>
                                            <td>
                                                {{-- @empty ($user->roles)
                                                Pas de Rôle
                                                @else
                                                {{ $user->roles->nom }}
                                                @endempty --}}
                                                {{implode(',', $user->roles()->get()->pluck('nom')->toArray())}}
                                            </td>

                                            <td>
                                                <a type="button" data-container="body" data-toggle="popover" data-placement="top" title="Modification" data-bs-toggle="modal" data-bs-target="#ModalUser"
                                                    wire:click.prevent='getElementById({{ $user->id }})'> <i
                                                        class="fa fa-edit fa-2x m-5 text-warning"></i> </a>
                                                <a type="button" data-container="body" data-toggle="popover" data-placement="top" title="Supprimer" wire:click.prevent="deleteUser({{ $user->id }})"> <i
                                                        class="fa fa-trash-o fa-2x text-danger"></i> </a>
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
    @include('livewire.dashboard.user.modal')
    <!-- Container-fluid Ends-->
</div>


@section('scripts')
<script src="{{ asset('assets/js/bootstrap/popper.min.js') }}"></script>
<script src="{{ asset('assets/js/tooltip-init.js') }}"></script>
<script src="{{ asset('assets/js/popover-custom.js') }}"></script>
    <script src="{{ asset('assets/js/datatable/datatables/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset('assets/js/datatable/datatables/datatable.custom.js') }}"></script>
    {{-- @include('livewire.dashboard.partials.confirmation-de-suppression') --}}
    <script>
        $("#rolesss").on('change', function() {
            @this.rolessU = $(this).val();
            window.alert("ok");
        });


        // $("#partenaire").on('change',function() {
        //     @this.partenaire_id = $(this).val();
        // });
    </script>
@endsection
