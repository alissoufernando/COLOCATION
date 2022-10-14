  <!-- Vertically centered modal-->

  <div wire:ignore.self class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenter" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="float-end">

            <button wire:click.prevent='resetInputFields' class="btn-close float-end btn-danger" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>

        @empty ($this->post)
        <form class="form theme-form" wire:submit.prevent='savePostule'>
            @csrf
            <div class="modal-body">
                    <div class="card-body">
                    <div class="row">
                    <div class="col-md-12">
                    <div class="mb-3">
                    <label class="form-label" for="name">Date d'entrée:</label>
                    <input class="form-control form-control-sm" id="name" type="date" placeholder="" wire:model.lazy="date_entre">
                    </div>
                    </div>
                    <div class="col-md-12">
                    <div class="mb-3">
                    <label class="form-label" for="slug">Date de sortie</label>
                    @if ($this->indetermine == 1)
                    <input class="form-control form-control-sm" id="slug" type="date" placeholder="" wire:model.lazy="date_de_sortie" disabled >
                    @else
                    <input class="form-control form-control-sm" id="slug" type="date" placeholder="" wire:model.lazy="date_de_sortie">
                    @endif
                    </div>
                    </div>
                    <div class="col-md-12">
                    <div class="md-3">
                    @if ($this->indetermine == 1)
                    <label class="d-block">
                        <input class="checkbox_animated mb-3 mr-3"
                            type="checkbox" value=""
                            wire:model="indetermine" checked>Indeterminer
                    </label>
                    @else
                    <label class="d-block">
                        <input class="checkbox_animated mb-3 mr-3"
                            type="checkbox" value="1"
                            wire:model="indetermine">Indeterminer
                    </label>
                    @endif
                    </div>
                    </div>
                    <div class="col-md-12">
                        <textarea name="" id="" cols="51" rows="3" wire:model="message" placeholder="Votre message:"></textarea>
                    </div>
                    @php
                        $this->product_id = $this->product_ids;
                    @endphp
                    {{-- <input class="form-control form-control-sm" id="slug" type="hidden" value="{{$this->product_ids}}" wire:model.lazy="product_id"> --}}

                    </div>
                </div>
            </div>
            <div class="modal-footer justify-content-start" >
                <button type="submit" class="btn btn-primary btn-sm">
                    Ajouter
                </button>
              <a wire:click.prevent='resetInputFieldss' class="btn btn-danger float-end btn-sm" type="button" data-bs-dismiss="modal">Fermer</a>
            </div>
        </form>
        @else
        @if ($this->post->reponse == null)
        <div class="text-center">
            <h5>Pas de retour de votre future Colocataire</h5>
        </div>
        @else
        @if ($this->post->reponse == "Validé")
            <div class="modal-header justify-content-center">
            <h3 class="modal-title ">Les moyens de contact</h3>
            </div>
            <div class="modal-body justify-content-center">
            <a href="tel:+2295185044" class="btn btn-fill-out btn-radius btn-sm"><i class="icon-headphone-alt"></i>Appeler</a>
            {{-- <a href="https://wa.me/+2295185044?text=Bonjour," class="btn btn-fill-out btn-radius btn-sm"><i class="icon-comment-alt"></i>Wthatsapp</a> --}}
            <a href="mailto:alissouanani@gmail.com" class="btn btn-fill-out btn-radius btn-sm"><i class="icon-email"></i>Mail</a>
            <a href="{{route('contact.par-message',['id' => $this->auteurAnnonce->user->id])}}" class="btn btn-fill-out btn-radius btn-sm"><i class="fa fa-comment-o"></i>Chat</a>
            </div>
        @else
        <h1>Désolé</h1>
        @endif
        @endif
        @endempty
      </div>
    </div>
  </div>
