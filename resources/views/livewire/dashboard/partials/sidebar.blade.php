<!-- Page Sidebar Start-->
<div class="page-sidebar">
  <div class="main-header-left d-none d-lg-block">
    <div class="logo-wrapper"><a href="/"><img src="{{asset('assets/site/assets/images/logo_sb_1.png')}}" alt="logo" width="100" height="100"></a></div>
  </div>
  <div class="sidebar custom-scrollbar">

    <ul class="sidebar-menu">
        <li>
            <a href="{{route('welcome')}}" class="sidebar-header {{ Route::currentRouteName()== 'welcome' ? 'active' : '' }}"><i data-feather="home"></i><span>Home</span></i>
            </a>
        </li>
        <li>
            <a href="{{route('site.my-account')}}" class="sidebar-header {{ Route::currentRouteName()== 'site.my-account' ? 'active' : '' }}"><i data-feather="home"></i><span>Mon Compte</span></i>
            </a>
        </li>
        <li><a href="{{route('admin.product-index')}}" class="sidebar-header {{ Route::currentRouteName()== 'admin.product-index' ? 'active' : '' }}"><i data-feather="home"></i> <span>Produits</span></a></li>
        <li><a href="{{route('admin.article-index')}}" class="sidebar-header {{ Route::currentRouteName()== 'admin.article-index' ? 'active' : '' }}"><i data-feather="home"></i> <span>Articles</span></a></li>
        <li><a href="{{route('admin.category-index')}}" class="sidebar-header {{ Route::currentRouteName()== 'admin.category-index' ? 'active' : '' }}"><i data-feather="home"></i> <span>Catégories</span> </a></li>
        <li><a href="{{route('admin.candidature-index')}}" class="sidebar-header {{ Route::currentRouteName()== 'admin.candidature-index' ? 'active' : '' }}"><i data-feather="home"></i><span>Candidatures</span> </a></li>
        <li><a href="{{route('mes-messages')}}" class="sidebar-header {{ Route::currentRouteName()== 'mes-messages' ? 'active' : '' }}"><i data-feather="home"></i><span>Messages</span> </a></li>
      {{-- <li class="{{request()->route()->getPrefix() == '/admin' ? 'active' : '' }}">
        <a class="sidebar-header" ><i data-feather="home"></i><span>{{ trans('lang.Dashboard') }}</span>
          <span class="badge rounded-pill badge-primary">6</span><i class="fa fa-angle-right pull-right"></i>
        </a>
        <ul class="sidebar-submenu">


        </ul>
      </li> --}}


        <li class="{{request()->route()->getPrefix() == '/administration' ? 'active' : '' }}">
          <a class="sidebar-header" ><i data-feather="user"></i><span>Administration</span><i class="fa fa-angle-right pull-right"></i>
          </a>
          <ul class="sidebar-submenu">
            <li><a href="{{route('admin.user-index')}}" class="{{ Route::currentRouteName()== 'admin.user-index' ? 'active' : '' }}"><i class="fa fa-circle"></i>Users</a></li>
            <li><a href="{{route('admin.role-index')}}" class="{{ Route::currentRouteName()== 'admin.role-index' ? 'active' : '' }}"><i class="fa fa-circle"></i>Rôles</a></li>
            <li><a href="{{route('admin.contact-index')}}" class="{{ Route::currentRouteName()== 'admin.contact-index' ? 'active' : '' }}"><i class="fa fa-circle"></i>Contacts</a></li>
            <li><a href="{{route('admin.parametre-index')}}" class="{{ Route::currentRouteName()== 'admin.parametre-index' ? 'active' : '' }}"><i class="fa fa-circle"></i>Parametres</a></li>

          </ul>
        </li>





    </ul>
  </div>
</div>
<!-- Page Sidebar Ends-->
<!-- Right sidebar Start-->
<div class="right-sidebar" id="right_side_bar">
  <div>
    <div class="container p-0">
      <div class="modal-header p-l-20 p-r-20">
        <div class="col-sm-8 p-0">
          <h6 class="modal-title fw-bold">FRIEND LIST</h6>
        </div>
        <div class="col-sm-4 text-end p-0"><i class="me-2" data-feather="settings"></i></div>
      </div>
    </div>
    <div class="friend-list-search mt-0">
      <input type="text" placeholder="search friend"><i class="fa fa-search"></i>
    </div>
    <div class="chat-box">
        <div class="people-list friend-list">
          <ul class="list">
            <li class="clearfix"><img class="rounded-circle user-image" src="{{asset('assets/images/user/1.jpg')}}" alt="">
              <div class="status-circle online"></div>
              <div class="about">
                <div class="name">Vincent Porter</div>
                <div class="status"> Online</div>
              </div>
            </li>
            <li class="clearfix"><img class="rounded-circle user-image" src="{{asset('assets/images/user/2.png')}}" alt="">
              <div class="status-circle away"></div>
              <div class="about">
                <div class="name">Ain Chavez</div>
                <div class="status"> 28 minutes ago</div>
              </div>
            </li>
            <li class="clearfix"><img class="rounded-circle user-image" src="{{asset('assets/images/user/8.jpg')}}" alt="">
              <div class="status-circle online"></div>
              <div class="about">
                <div class="name">Kori Thomas</div>
                <div class="status"> Online</div>
              </div>
            </li>
            <li class="clearfix"><img class="rounded-circle user-image" src="{{asset('assets/images/user/4.jpg')}}" alt="">
              <div class="status-circle online"></div>
              <div class="about">
                <div class="name">Erica Hughes</div>
                <div class="status"> Online</div>
              </div>
            </li>
            <li class="clearfix"><img class="rounded-circle user-image" src="{{asset('assets/images/user/5.jpg')}}" alt="">
              <div class="status-circle offline"></div>
              <div class="about">
                <div class="name">Ginger Johnston</div>
                <div class="status"> 2 minutes ago</div>
              </div>
            </li>
            <li class="clearfix"><img class="rounded-circle user-image" src="{{asset('assets/images/user/6.jpg')}}" alt="">
              <div class="status-circle away"></div>
              <div class="about">
                <div class="name">Prasanth Anand</div>
                <div class="status"> 2 hour ago</div>
              </div>
            </li>
            <li class="clearfix"><img class="rounded-circle user-image" src="{{asset('assets/images/user/7.jpg')}}" alt="">
              <div class="status-circle online"></div>
              <div class="about">
                <div class="name">Hileri Jecno</div>
                <div class="status"> Online</div>
              </div>
            </li>
          </ul>
        </div>
      </div>
  </div>
</div>
<!-- Right sidebar Ends-->
