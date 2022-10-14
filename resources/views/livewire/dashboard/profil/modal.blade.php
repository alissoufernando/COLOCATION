  <!-- Vertically centered modal-->

  <div wire:ignore.self class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenter" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title text-center">Edit Mon profile</h5>
          <button wire:click.prevent='resetInputFields' class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <form class="form theme-form" wire:submit.prevent='saveProfile'>
                <div class="modal-body">
                        <div class="card-body">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="row">

                                    <div class="col-md-12">
                                        <div class="mb-3">
                                        <label class="form-label" for="slug">Telephone:</label>
                                        <input class="form-control" required type="tel" name="phone" placeholder="Phone.........." wire:model.lazy="phone">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="mb-3">
                                        <label class="form-label" for="slug">email:</label>
                                        <input class="form-control" required type="email" name="email" placeholder="Email........" wire:model.lazy="email">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="mb-3">
                                        <label class="form-label" for="slug">Name:</label>
                                        <input class="form-control" required type="text" name="name" placeholder="Nom..........." wire:model.lazy="name">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="mb-3">
                                        <label class="form-label" for="slug">Votre Filiére:</label>
                                        <input class="form-control" required type="text" name="profession" placeholder="Etudiant en Génie Logiciel" wire:model.lazy="profession">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="mb-3">
                                        <label class="form-label" for="slug">lien twitter:</label>
                                        <input class="form-control" required type="text" name="link_twitter" placeholder="twitter " wire:model.lazy="link_twitter">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="mb-3">
                                        <label class="form-label" for="slug">Lien instagram:</label>
                                        <input class="form-control" required type="text" name="link_instagram" placeholder="Instagram " wire:model.lazy="link_instagram">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="mb-3">
                                        <label class="form-label" for="slug">Lien facebook:</label>
                                        <input class="form-control form-control-lg" required type="text" name="link_instagram" placeholder="facebook " wire:model.lazy="link_facebook">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="mb-3">
                                        <label class="form-label" for="slug">Votre adresse:</label>
                                        <input class="form-control form-control-lg" required type="text" name="address" placeholder="Votre adresse " wire:model.lazy="adresse">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer justify-content-start" >
                    <button type="submit" class="btn btn-primary btn-sm">
                        Modifier
                    </button>

                  <a wire:click.prevent='resetInputFields' class="btn btn-danger float-end" type="button" data-bs-dismiss="modal">Fermer</a>
                </div>
        </form>
      </div>
    </div>
  </div>
