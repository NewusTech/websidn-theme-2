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
				<h2 class="underline mb-2">Tentang Kami</h2>
				<ul class="page-title-link text-center mb-2">
					<li><a href="/">Beranda</a></li>
					<li><a href="#">Tentang</a></li>
				</ul>
			</div>
		</div>
	</div>
	
	<div class="container mb-4 mt-4 d-md-none" style="padding-top: 15%">
		<div class="col-md-12 ">
			<div class="banner text-center ">
				<h2 class="underline mb-2">Tentang Kami</h2>
				<ul class="page-title-link text-center mb-2">
					<li><a href="/">Beranda</a></li>
					<li><a href="#">Tentang</a></li>
				</ul>
			</div>
		</div>
	</div>
	
	
    <div id="about" class="section wb py-3">
        <div class="container">
            <div class="section-title text-center">
                {{-- <h3>Tentang Kami</h3> --}}
                {{-- <p>Quisque eget nisl id nulla sagittis auctor quis id. Aliquam quis vehicula enim, non aliquam risus.</p> --}}
			</div>
			<div class="row mt-3">
				@foreach ($about as $abouts)
                <div class="col-md-6">
                    <div class="message-box">           
                        <h2 class="mb-3"> {{ $abouts->judul }}</h2>
                        <p class="text-dark" style="font-size: 17px"> {{ $abouts->text }}</p>
						<div style="padding-top: 20px">
							<a href="/about" class="btn-primary hover-effect-new text-dark" ><span>Read More</span></a>
						</div>
                    </div><!-- end messagebox -->
                </div><!-- end col -->

                <div class="col-md-6">
                    <div class="right-box wow fadeIn rounded">
                        {{-- <iframe width="100%" height="400" src="https://www.youtube.com/embed/VIDEO_ID" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe> --}}
						<iframe class="rounded" width="540" height="375" src="{{ $abouts->video }}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
						{{-- <img src="{{ asset('uploads/about_01.jpg') }}" alt="" class="img-fluid img-rounded"> --}}
                    </div><!-- end media -->
                </div><!-- end col -->
				@endforeach
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end section -->
	
    <!-- Google Maps Section -->
    @foreach ($contact as $kontak)
        <div class="map-container">
            <iframe src="{{ $kontak->map }}" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            {{-- <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1547438.2367710308!2d-75.95095278116435!3d40.75453936473234!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c259a6760bd525%3A0x457b22457e93a4ac!2sLove%20Studios%20Nyc%20Photo%20%26%20Video%20Studio!5e0!3m2!1sid!2sid!4v1718360984904!5m2!1sid!2sid" width="1280" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe> --}}
        </div>
    @endforeach
    
	
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