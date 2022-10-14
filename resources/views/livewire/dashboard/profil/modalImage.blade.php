  <!-- ModalProductImage modal-->

  <div wire:ignore.self class="modal fade" id="ModalImage" tabindex="-1" role="dialog"
      aria-labelledby="ModalImage" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content">
              <div class="modal-header">
                  @if ($profile_id)
                      <h5 class="modal-title text-center">Editer la photo</h5>
                  @else
                      <h5 class="modal-title text-center">Ajouter Une photo</h5>
                  @endif
                  <button wire:click.prevent='resetInputFields' class="btn-close" type="button"
                      data-bs-dismiss="modal" aria-label="Close"></button>

              </div>
              <form class="form theme-form"  wire:submit.prevent='saveImageUser'>
                  <div class="modal-body">
                      <div class="card-body">
                          <div class="row">
                            <div class="col-md-12">
                                <div class="mb-3">
                                    <label class="form-label" for="path">Photo de profile</label>:</label>
                                    <input class="form-control form-control-lg mb-3" id="path" type="file"
                                        accept=".jpg, .png, image/jpeg, image/png"  wire:model.lazy='path' required>
                                        @if ($path)
                                          <img src="{{$path->temporaryUrl()}}" class="px-2" width="100">
                                        @endif
                                </div>
                            </div>
                          </div>
                      </div>


                      <div class="modal-footer justify-content-start">
                          @if ($profile_id)
                              <button type="submit" class="btn btn-primary btn-sm">
                                  Modifier
                              </button>
                          @else
                              <button type="submit" class="btn btn-primary btn-sm">
                                  Ajouter
                              </button>
                          @endif
                          <a wire:click.prevent='resetInputFields' class="btn btn-danger float-end" type="button"
                              data-bs-dismiss="modal">Fermer</a>
                      </div>
                  </div>
              </form>
          </div>
      </div>
  </div>
