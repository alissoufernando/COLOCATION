  <!-- Vertically centered modal-->

  <div wire:ignore.self class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenter" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header">
            @if ($categorie_id)
            <h5 class="modal-title text-center">Edit un Type de chambre</h5>
            @else
            <h5 class="modal-title text-center">Ajouter un Type de chambre</h5>
            @endif
          <button wire:click.prevent='resetInputFields' class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <form class="form theme-form" wire:submit.prevent='saveCategory'>
                <div class="modal-body">
                        <div class="card-body">
                        <div class="row">
                        <div class="col-md-12">
                            <div class="mb-3">
                            <label class="form-label" for="name">Nom du type de chambre:</label>
                            <input class="form-control form-control-lg" id="name" type="text" placeholder="Ex: une chambre salon" wire:model.lazy='name' wire:keyup="generateSlug">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="mb-3">
                            <label class="form-label" for="slug">Slug du type de chambre:</label>
                            <input class="form-control form-control-lg" id="slug" type="text" placeholder="Slug" wire:model.lazy='slug'>
                            </div>
                        </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer justify-content-start" >
                    @if ($categorie_id)
                    <button type="submit" class="btn btn-primary btn-sm">
                        Modifier
                    </button>
                    @else
                    <button type="submit" class="btn btn-primary btn-sm">
                        Ajouter
                    </button>
                    @endif
                  <a wire:click.prevent='resetInputFields' class="btn btn-danger float-end" type="button" data-bs-dismiss="modal">Fermer</a>
                </div>
        </form>
      </div>
    </div>
  </div>
