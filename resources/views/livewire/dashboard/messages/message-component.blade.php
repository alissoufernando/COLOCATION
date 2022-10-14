
@section('title', 'Messages')
@section('styles')
@endsection

@section('breadcrumb-title', 'Messages')
@section('breadcrumb-items')
<li class="breadcrumb-item">Tableau de bord</li>
<li class="breadcrumb-item active">Mes messages</li>
@endsection
<div>
    <div class="container-fluid">
        <div class="row">
          <div class="col call-chat-sidebar col-sm-12">
            <div class="card">
              <div class="card-body chat-body">
                <div class="chat-box">
                  <!-- Chat left side Start-->
                  <div class="chat-left-aside">
                    <div class="media">
                        @empty(Auth::user()->image_user->path)
                        <img class="rounded-circle user-image" src="{{ asset('assets/images/user/1.png') }}" alt="">
                        @else
                        <img class="rounded-circle user-image" src="{{asset('storage')}}/{{Auth::user()->image_user->path}}" alt="">
                        @endempty
                      <div class="about">
                        <div class="name f-w-600">{{ Auth::user()->name }}</div>
                        @if (auth()->check())
                        <div class="status">en ligne</div>
                        @else
                        <div class="status">Status</div>
                        @endif
                      </div>
                    </div>
                    <div class="people-list" id="people-list">
                      <div class="search">
                        {{-- <form class="theme-form"> --}}
                          <div class="form-group">
                            <input class="form-control" type="text" placeholder="search" wire:model="name"><i class="fa fa-search"></i>
                          </div>
                        {{-- </form> --}}
                      </div>
                      @if(count($rechercherNames) > 0)
                      <ul class="list">
                        @foreach ($rechercherNames as $rechercherName)
                        @if ($rechercherName->id != Auth::user()->id)
                        <li wire:click.prevent='getId({{$rechercherName->id}})' style="cursor: pointer" class="clearfix">
                            @empty ($rechercherName->image_user->path)
                            <img class="rounded-circle user-image" src="{{ asset('assets/images/user/1.png') }}" alt="">

                            @else
                            <img class="rounded-circle user-image" src="{{asset('storage')}}/{{$rechercherName->image_user->path}}" alt="">

                            @endempty
                            @if (Auth::user()->id == $rechercherName->id)
                            <div class="status-circle online"></div>
                            @else
                            <div class="status-circle offline"></div>
                            @endif

                            <div class="about">
                              <div class="name">{{ $rechercherName->name }}</div>
                              <div class="status">Hello Name</div>
                            </div>
                        </li>
                        @endif
                        @endforeach
                      </ul>
                      @else
                      <ul class="list">
                        @foreach ($users as $user)
                        @if ($user->id != Auth::user()->id && (user))
                        <li wire:click.prevent='getId({{$user->id}})' style="cursor: pointer" class="clearfix">
                            @empty ($user->image_user->path)
                            <img class="rounded-circle user-image" src="{{ asset('assets/images/user/1.png') }}" alt="">

                            @else
                            <img class="rounded-circle user-image" src="{{asset('storage')}}/{{$user->image_user->path}}" alt="">

                            @endempty
                            @if (Auth::user()->id == $user->id)
                            <div class="status-circle online"></div>
                            @else
                            <div class="status-circle offline"></div>
                            @endif

                            <div class="about">
                              <div class="name">{{ $user->name }}</div>
                              <div class="status">Hello Name</div>
                            </div>
                        </li>
                        @endif
                        @endforeach
                      </ul>
                      @endif

                    </div>
                  </div>
                  <!-- Chat left side Ends-->
                </div>
              </div>
            </div>
          </div>
          <div class="col call-chat-body">
            <div class="card">
              <div class="card-body p-0">
                <div class="row chat-box">
                  <!-- Chat right side start-->
                  <div class="col pr-0 chat-right-aside">
                    <!-- chat start-->
                    <div class="chat">
                      @if ($userM == null)
                      <img class="rounded-circle" src="{{ asset('assets/images/user/3.png') }}" alt="">
                      @else
                        <!-- chat-header start-->
                      <div class="chat-header clearfix">
                        @empty($userM->image_user->path)
                        <img class="rounded-circle" src="{{ asset('assets/images/user/1.png') }}" alt="">
                        @else
                        <img class="rounded-circle" src="{{asset('storage')}}/{{$userM->image_user->path}}" alt="">
                        @endempty
                        <div class="about">
                          <div class="name">{{ $userM->name }}  <span class="font-primary f-12">Typing...</span></div>
                            @if (Auth::user()->id == $userM->id)
                            <div class="status digits">En ligne</div>
                            @else
                            <div class="status digits">Last Seen 3:55 PM</div>
                            @endif
                        </div>
                        <ul class="list-inline float-end float-sm-right chat-menu-icons">
                          <li class="list-inline-item"><a href="chat.html#"><i class="icon-search"></i></a></li>
                          <li class="list-inline-item"><a href="chat.html#"><i class="icon-clip"></i></a></li>
                          <li class="list-inline-item"><a href="chat.html#"><i class="icon-headphone-alt"></i></a></li>
                          <li class="list-inline-item"><a href="chat.html#"><i class="icon-video-camera"></i></a></li>
                          <li class="list-inline-item toogle-bar"><a href="chat.html#"><i class="icon-menu"></i></a></li>
                        </ul>
                      </div>
                      <!-- chat-header end-->
                      <div class="chat-history chat-msg-box custom-scrollbar">
                        <ul>
                            @if ($messages_destinataire)
                            @foreach ($messages_destinataire as $message_destinataire)
                            <li>
                                <div class="message my-message">
                                    @empty($userM->image_user->path)
                                    <img class="rounded-circle float-left chat-user-img img-30" src="{{ asset('assets/images/user/1.png') }}" alt="">
                                    @else
                                    <img class="rounded-circle float-left chat-user-img img-30" src="{{asset('storage')}}/{{$userM->image_user->path}}" alt="">
                                    @endempty
                                    {{ $message_destinataire->message}}
                                  <div class="message-data text-right"><span class="message-data-time">{{ $message_destinataire->created_at->format('H:i') }}</span></div>
                                </div>
                            </li>
                            @endforeach
                            @endif

                            @if ($messages_auteur)
                            @foreach ($messages_auteur as $message_auteur)
                            <li class="clearfix">
                                <div class="message other-message pull-right">
                                    @empty(Auth::user()->image_user->path)
                                    <img class="rounded-circle float-right chat-user-img img-30" src="../assets/images/user/1.png" alt="">
                                    @else
                                    <img class="rounded-circle float-right chat-user-img img-30" src="{{asset('storage')}}/{{Auth::user()->image_user->path}}" alt="">
                                    @endempty
                                    {{ $message_auteur->message}}
                                  <div class="message-data"><span class="message-data-time">{{ $message_auteur->created_at->format('H:i') }}</span></div>
                                </div>
                              </li>
                            @endforeach
                            @endif


                      <form wire:submit.prevent="saveMessage">
                        <div class="chat-message clearfix">
                            <div class="row">
                              <div class="col-xl-12 d-flex">
                                <div class="smiley-box bg-primary">
                                  <div class="picker"><img src="{{ asset('assets/images/smiley.png') }}" alt=""></div>
                                </div>
                                <div class="input-group text-box">
                                  <input class="form-control input-txt-bx" id="message-to-send" type="text" name="message-to-send" placeholder="Type a message......" wire:model="message" required autocomplete="off">
                                  <button class="btn btn-primary" type="submit">Envoyer</button>

                                  {{-- <div class="input-group-append">
                                    <button class="btn btn-primary" type="submit">Envoyer</button>
                                  </div> --}}
                                </div>
                              </div>
                            </div>
                          </div>
                      </form>
                      <!-- end chat-message-->
                      <!-- chat end-->
                      <!-- Chat right side ends-->
                      @endif
                    </div>
                  </div>

                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
</div>


@section('scripts')
@endsection
