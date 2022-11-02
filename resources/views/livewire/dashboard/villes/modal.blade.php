  <!-- Vertically centered modal-->

  <div wire:ignore.self class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenter" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header">
            @if ($ville_id)
            <h5 class="modal-title text-center">Edit une ville</h5>
            @else
            <h5 class="modal-title text-center">Ajouter une ville</h5>
            @endif
          <button wire:click.prevent='resetInputFields' class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <form class="form theme-form" wire:submit.prevent='saveVille'>
                <div class="modal-body">
                        <div class="card-body">
                        <div class="row">
                        <div class="col-md-12">
                            <div class="mb-3">
                            <label class="form-label" for="name">Nom de la ville:</label>
                            <input class="form-control form-control-lg" id="name" type="text" placeholder="nom de la ville" wire:model.lazy='name'>
                            </div>
                        </div>
                        <div class="col-md-12 ">
                            <div wire:ignore class="mb-3">
                                <label class="form-label" for="categorie_id">Departement:</label>
                                <select class="form-select js-example-basic-single" id="departement_id"  required="" wire:model="departement_id">
                                    <option value="0">None</option>
                                    @foreach ($departements as $departement)
                                    <option value="{{$departement->id}}">{{$departement->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                      </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer justify-content-start" >
                    <a wire:click.prevent='resetInputFields' class="btn btn-danger float-end" type="button" data-bs-dismiss="modal">Fermer</a>
                    @if ($ville_id)
                    <button type="submit" class="btn btn-primary btn-sm">
                        Modifier
                    </button>
                    @else
                    <button type="submit" class="btn btn-primary btn-sm">
                        Ajouter
                    </button>
                    @endif
                </div>
        </form>
      </div>
    </div>
  </div>
