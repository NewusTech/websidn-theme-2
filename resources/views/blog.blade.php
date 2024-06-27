<!DOCTYPE html>
<html lang="en">

    <!-- Basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">   
   
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
 
     <!-- Site Metas -->
    <title>PhotoShoot - Photography </title>  
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="{{ asset('images/favicon.ico') }}" type="image/x-icon" />
    <link rel="apple-touch-icon" href="{{ asset('images/apple-touch-icon.png') }}">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}">
    <!-- Site CSS -->
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="{{ asset('css/responsive.css') }}">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="{{ asset('css/custom.css') }}">
	<script src="{{ asset('js/modernizr.js') }}"></script> <!-- Modernizr -->

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body id="page-top" class="politics_version">

    <!-- LOADER -->
    <div id="preloader">
		<div class="loader-rd"></div>
		<div class="loader-rd"></div>
		<div class="loader-rd"></div>
		<div class="loader-rd"></div>
    </div><!-- end loader -->
    <!-- END LOADER -->
	
	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
		<div class="container-fluid">
			<a class="navbar-brand js-scroll-trigger" href="/">
				@foreach ($logo as $logos)
					@if ($logos->images)
						<img src="{{ asset('storage/' . $logos->images->path) }}" class="img-fluid" alt="Image">
					@else
						Gambar tidak tersedia
					@endif
				@endforeach
			</a>
			<button class="navbar-toggler rounded" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"  style="background-color: #f9ba1f; width: 1.5em; height: 1.5em; font-size: 1.5em;"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarCollapse">
				<ul class="navbar-nav mx-auto "style="font-size: 21px">
					<li class="nav-item">
						<a class="nav-link text-dark mx-2" href="/">Beranda</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-dark mx-2" href="/layanan">Layanan</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-dark mx-2" href="/galleri">Galeri</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-dark mx-2" href="/portofolio">Portofolio</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-dark mx-2" href="/tentang-kami">Tentang Kami</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-dark mx-2" href="/artikel">Artikel</a>
					</li>
					<li class="nav-item mx-2">
						<a href="/kontak-kami" class="btn btn-warning ml-2 mr-2 py-2 px-4 rounded-lg text-white"
							style="font-size: 19px; color: #f9ba1f;">Hubungi Kami</a>
					</li>
				</ul>
				
			</div>
		</div>
	</nav>
	
	<div class="container mb-4 d-none d-md-block" style="padding-top: 8%">
		<div class="col-md-12 ">
			<div class="banner text-center ">
				<h2 class="underline mb-2">Artikel Kami</h2>
				<ul class="page-title-link text-center mb-2">
					<li><a href="/">Beranda</a></li>
					<li><a href="#">Artikel</a></li>
				</ul>
			</div>
		</div>
	</div>
	
	<div class="container mb-4 mt-4 d-md-none" style="padding-top: 15%">
		<div class="col-md-12 ">
			<div class="banner text-center ">
				<h2 class="underline mb-2">Artikel Kami</h2>
				<ul class="page-title-link text-center mb-2">
					<li><a href="/">Beranda</a></li>
					<li><a href="#">Artikel</a></li>
				</ul>
			</div>
		</div>
	</div>
	
    <div id="services" class="section lb">
        <div class="container">
            <div class="section-title text-center">
                <h3 style="font-size: 25px">Ikuti Berita Terbaru Kami Disini</h3>
				{{-- <strong><p class="text-dark" style="font-size: 20px">Ikuti Berita Terbaru Kami Disini</p></strong> --}}
			</div><!-- end title -->

            <div class="row">
				<div class="col-md-4">
					<div class="effect-new">
						<div class="blogs-inner-box">
							<img src="uploads/blog-01.jpg">
							<h2>Wedding Photography</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
						</div>
					</div>
                </div><!-- end col -->
                <div class="col-md-4">
					<div class="effect-new">
						<div class="blogs-inner-box">
							<img src="uploads/blog-02.jpg">
							<h2>Portrait photography</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
						</div>
					</div>
                </div><!-- end col -->
				<div class="col-md-4">
					<div class="effect-new">
						<div class="blogs-inner-box">
							<img src="uploads/blog-03.jpg">
							<h2>Event Photography</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
						</div>
					</div>
                </div><!-- end col -->
				<div class="col-md-4">
					<div class="effect-new">
						<div class="blogs-inner-box">
							<img src="uploads/blog-03.jpg">
							<h2>Engagement Photography</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
						</div>
					</div>
                </div><!-- end col -->
                <div class="col-md-4">
					<div class="effect-new">
						<div class="blogs-inner-box">
							<img src="uploads/blog-01.jpg">
							<h2>Beauty and fashion</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
						</div>
					</div>
                </div><!-- end col -->
				<div class="col-md-4">
					<div class="effect-new">
						<div class="blogs-inner-box">
							<img src="uploads/blog-02.jpg">
							<h2>Corporate portrait</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
						</div>
					</div>
                </div><!-- end col -->
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end section -->
	

	<footer class="main-footer py-3 m-0">
		<div class="container">
			<div class="row justify-content-between">
				<div class="col-lg-4 col-md-6 col-sm-12">
					<div class="mb-3 img-logo">
						@foreach ($logo as $logos)
						<a href="/">
							@if ($logos->images)
								<img src="{{ asset('storage/' . $logos->images->path) }}" class="img-fluid" alt="Image">
							@endif
						</a>
						<p>{{ $logos->texts->paragraph }}</p>
						@endforeach
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-12">
					
				</div>
				<div class="col-lg-4 col-md-6 col-sm-12 justify-content-end">
					@foreach ($contact as $kontak)
					<h4 class="mb-3 ph-fonts-style foot-title fs-4">
						FOLLOW US
					</h4>
					<p class="ph-links-column">
						<a href="https://wa.me/{{ $kontak->whatsapp }}" class="text-black">Whatsapp</a>
						<a href="{{ $kontak->instagram }}" class="text-black">Instagram</a>
						<a href="{{ $kontak->facebook }}" class="text-black">Tiktok</a>
						<a href="{{ $kontak->youtube }}" class="text-black">Youtube</a>
						<a href="{{ $kontak->linkedin }}" class="text-black">Linkedin</a>
					</p>
					@endforeach
				</div>
				
			</div>
		</div>
	</footer>

    <div class="copyrights">
        <div class="container">
            <div class="footer-distributed">
                <div class="footer-left">                    
                    <p class="footer-company-name">All Rights Reserved. &copy; 2024 Design by : 
					<a href="https://websidn">Websidn</a> Distributed by: <a href="">Newus Technology</a>
                    </p>
                </div>
            </div>
        </div><!-- end container -->
    </div><!-- end copyrights -->

    @foreach ($contact as $kontak)
		<a href="https://wa.me/{{ $kontak->whatsapp }}?text=Halo,%20saya%20tertarik%20dengan%20layanan%20Anda." class="whatsapp-sticky">
			<i class="fab fa-whatsapp"></i>
		</a>
	@endforeach

    <!-- ALL JS FILES -->
	<script src="{{ asset('js/all.js') }}"></script>
	<!-- Camera Slider -->
	<script src="{{ asset('js/jquery.mobile.customized.min.js') }}"></script>
	<script src="{{ asset('js/jquery.easing.1.3.js') }}"></script> 
	<script src="{{ asset('js/parallaxie.js') }}"></script>
	<script src="{{ asset('js/jquery.appear.min.js') }}"></script>
	<script src="{{ asset('js/skill.bars.jquery.js') }}"></script>
	<script src="{{ asset('js/responsiveslides.min.js') }}"></script>
	<!-- Contact form JavaScript -->
	<script src="{{ asset('js/jqBootstrapValidation.js') }}"></script>
	<script src="{{ asset('js/contact_me.js') }}"></script>
	<!-- ALL PLUGINS -->
	<script src="{{ asset('js/jquery.fatNav.min.js') }}"></script>
	<script src="{{ asset('js/menu-overlay.js') }}"></script>
	<script src="{{ asset('js/custom.js') }}"></script>
	<script src="{{ asset('js/zepto.min.js') }}"></script>
	<script src="{{ asset('js/imagesloaded.pkgd.min.js') }}"></script>
	<script src="{{ asset('js/slider.js') }}"></script>

</body>
</html>