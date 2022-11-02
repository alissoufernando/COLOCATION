  <!-- ModalUser modal-->

  <div wire:ignore.self class="modal fade" id="ModalUser" tabindex="-1" role="dialog" aria-labelledby="ModalUser"
      aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content">
              <div class="modal-header">
                  @if ($user_id)
                      <h5 class="modal-title text-center">Edit un utilisateur</h5>
                  @else
                      <h5 class="modal-title text-center">Ajouter un utilisateur</h5>
                  @endif
                  <button wire:click.prevent='resetInputFields' class="btn-close" type="button"
                      data-bs-dismiss="modal" aria-label="Close"></button>

              </div>
              <form class="form theme-form" wire:submit.prevent='saveUser'>
                  <div class="modal-body">
                      @if ($user_id)
                          <div class="card-body">
                              <div class="row">
                                  <div class="col-md-12">
                                      <div class="mb-3">
                                          <label class="form-label" for="name">Nom:</label>
                                          <input class="form-control form-control-lg" id="name" type="text"
                                              placeholder=" lenom " wire:model.lazy='name'>
                                      </div>
                                  </div>
                                  <div class="col-md-12">
                                    <div class="mb-3">
                                        <label class="form-label" for="phone">Phone:</label>
                                        <input class="form-control form-control-lg" id="phone" type="tel"
                                            placeholder="prénom de l'utilisateur" wire:model.lazy='phone'>
                                    </div>
                                </div>

                                  <div class="col-md-12">
                                      <div class="mb-3">
                                          <label class="form-label" for="email">Email:</label>
                                          <input class="form-control form-control-lg" id="email" type="text"
                                              placeholder="l'email" wire:model.lazy='email'>
                                      </div>
                                  </div>


                                  <div class="col-md-12">
                                      <div class="form-group form-check mb-3">
                                          <span class="input-group-text mb-3" id="">Les rôles</span>
                                          @foreach ($roles as $role)
                                        {{-- <input type="checkbox" class="form-check" name="roles" wire:model="roless"  value="{{$role->id}}" id="{{ $role->id}}"
                                        @foreach ($user->roles as $userRole)
                                            @if ($userRole->id == $role->id)
                                                checked
                                            @endif
                                        @endforeach >
                                        <label for="{{$role->id}}" class="from-check-label">{{ $role->nom}}</label> --}}

                                        <label class="d-block" for="chk-ani">
                                            <input class="checkbox_animated mb-3"
                                                type="checkbox" value="{{$role->id}}" id="rolesss" name="roless[]"
                                                {{-- wire:model="roless" --}}
                                                @foreach ($this->myUserE->roles as $userRole)
                                                @if ($userRole->id == $role->id)

                                                    checked
                                                @endif
                                                @endforeach > {{ $role->nom}}
                                        </label>


                                        {{-- @foreach ($user->roles as $userRole)
                                        @if ($userRole->id == $role->id)
                                            checked
                                        @endif
                                    @endforeach> --}}
                                        @endforeach
                                    </div>
                                  </div>

                              </div>
                          </div>
                      @else
                          <div class="card-body">
                              <div class="row">
                                  <div class="col-md-12">
                                      <div class="mb-3">
                                          <label class="form-label" for="name">Nom:</label>
                                          <input class="form-control form-control-lg" id="name" type="text"
                                              placeholder="nom de l'utilisateur" wire:model.lazy='name'>
                                      </div>
                                  </div>
                                  <div class="col-md-12">
                                      <div class="mb-3">
                                          <label class="form-label" for="phone">Phone:</label>
                                          <input class="form-control form-control-lg" id="phone" type="tel"
                                              placeholder="prénom de l'utilisateur" wire:model.lazy='phone'>
                                      </div>
                                  </div>
                                  <div class="col-md-12">
                                      <div class="mb-3">
                                          <label class="form-label" for="email">Email:</label>
                                          <input class="form-control form-control-lg" id="email" type="text"
                                              placeholder="email de l'utilisateur" wire:model.lazy='email'>
                                      </div>
                                  </div>
                              </div>
                          </div>
                      @endif
                  </div>

                  <div class="modal-footer justify-content-start">
                      @if ($user_id)
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
              </form>
          </div>
      </div>
  </div>
