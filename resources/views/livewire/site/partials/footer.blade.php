<!-- START FOOTER -->
<footer class="footer_dark">
    <div class="footer_top pb_20">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="pb-4 mb-4 mb-md-5 border_bottom_tran">
                        <div class="row align-items-center justify-content-between">
                            <div class="col-lg-5 col-md-6">
                                <div class="heading_s1">
                                    <h3>Abonnez-vous à notre newsletter</h3>
                                </div>
                                <p>Inscrivez-vous à notre newsletter pour recevoir les dernières nouvelles sur l'emailing. Notre communication mensuelle vous informera des dernières mise a jour sur notre plateforme
                                </p>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <div class="newsletter_form">
                                    <form wire:submit.prevent='inscription_newsletter'>
                                        <input type="text" required="" class="form-control" wire:model="email"
                                            placeholder="Entrer l'adresse e-mail">
                                        <button type="submit" class="btn-send2" name="submit" value="Submit"><i
                                                class="icon-envelope-letter"></i></button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row border_bottom_tran pb-4 mb-4 mb-md-4">
                <div class="col-lg-4 col-12">
                    <div class="widget">
                        <div class="footer_logo">

                            <a href="#"><img src="{{asset('assets/site/assets/images/logo_sb_1.png')}}" alt="logo" width="60" height="60" /></a>
                        </div>
                        <p>communauté de colocataires en ligne parfaite pour les propriétaires proposant une chambre à louer, un studio ou une maison en colocation. Nous les aidons à trouver de manière simple et efficace des locataires de confiance
                            </p>
                    </div>
                    <div class="widget">
                        <ul class="social_icons rounded_social">
                            <li><a href="#" class="sc_facebook"><i class="ion-social-facebook"></i></a></li>
                            <li><a href="#" class="sc_google"><i class="ion-social-googleplus"></i></a></li>
                            <li><a href="#" class="sc_youtube"><i class="ion-social-youtube-outline"></i></a></li>
                            <li><a href="#" class="sc_instagram"><i class="ion-social-instagram-outline"></i></a></li>
                        </ul>
                    </div>
                </div>

                <div class="col-lg-8 col-12">
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-12">
                            <div class="widget">
                                <h6 class="widget_title">Liens rapides</h6>
                                <ul class="widget_links">
                                    <li><a href="#">Accueil</a></li>
                                    <li><a href="#">Connexion</a></li>
                                    <li><a href="#">Inscription</a></li>

                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-12">
                            <div class="widget">
                                <h6 class="widget_title">Informations</h6>
                                <ul class="widget_links">
                                    <li><a href="#">Colocation</a></li>
                                    <li><a href="#">Location</a></li>
                                    <li><a href="#">Contact</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-12">
                            <div class="widget">
                                <h6 class="widget_title">Mon Compte</h6>
                                <ul class="widget_links">
                                    <li><a href="#">Mon compte</a></li>
                                    <li><a href="#">dashborad</a></li>
                                    <li><a href="#">History location</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    {{-- <div class="middle_footer mb-4 mb-md-5">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="contact_bottom_info">
                        <div class="row justify-content-center">
                            <div class="col-md-4">
                                <div class="icon_box icon_box_style3 border-0 p-0">
                                    <div class="icon">
                                        <i class="ti-location-pin"></i>
                                    </div>
                                    <div class="icon_box_content">
                                        <h5>Location</h5>
                                        <p>BP: 556 Abomey-Calavi Aganmadin,  </br> Rue avant SBBE Lot 147-d</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="icon_box icon_box_style3 border-0 p-0">
                                    <div class="icon">
                                        <i class="ti-email"></i>
                                    </div>
                                    <div class="icon_box_content">
                                        <h5>Email</h5>
                                        <p><a href="mailto:alissouanani@gmail.com">alissouanani@gmail.com</a> </br> <a
                                                href="mailto:alissoufernando.com">alissoufernando.com</a></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="icon_box icon_box_style3 border-0 p-0">
                                    <div class="icon">
                                        <i class="flaticon-support"></i>
                                    </div>
                                    <div class="icon_box_content">
                                        <h5>Ouvert H24</h5>
                                        <p>Appelez pour des conseils </br> <a href="https://wa.me/+22955221080?text=Bonjour,">+229 55221080</a> </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> --}}
    <div class="bottom_footer bg_dark4">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <p class="mb-md-0 text-center text-md-start">© 2020 All Rights Reserved by STUDENT-COLOC</p>
                </div>
                {{-- <div class="col-md-6">
                    <ul class="footer_payment text-center text-md-end">
                        <li><a href="#"><img src="{{asset('assets/site/assets/images/visa.png')}}" alt="visa"></a></li>
                        <li><a href="#"><img src="{{asset('assets/site/assets/images/discover.png')}}" alt="discover"></a></li>
                        <li><a href="#"><img src="{{asset('assets/site/assets/images/master_card.png')}}" alt="master_card"></a></li>
                        <li><a href="#"><img src="{{asset('assets/site/assets/images/paypal.png')}}" alt="paypal"></a></li>
                        <li><a href="#"><img src="{{asset('assets/site/assets/images/amarican_express.png')}}" alt="amarican_express"></a></li>
                    </ul>
                </div> --}}
            </div>
        </div>
    </div>
</footer>
<!-- END FOOTER -->

<a href="#" class="scrollup" style="display: none;"><i class="ion-ios-arrow-up"></i></a>
