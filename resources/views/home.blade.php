<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">   
   
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
 
     <!-- Site Metas -->
    <title>PhotoShoot - Photography </title> 
	
	<style>
        
	</style>

    <!-- Meta Description -->
	<meta name="description" content="deskripsi">
        
	<!-- Meta Keywords -->
	<meta name="keywords" content="katakunci">
	
	<!-- Meta Author -->
	<meta name="author" content="author">
	
	<!-- Meta Robots -->
	<meta name="robots" content="index, follow">
	
	<!-- Open Graph Metadata -->
	<meta property="og:title" content="Contoh SEO Metadata untuk HTML, CSS, dan JavaScript">
	<meta property="og:description" content="Ini adalah contoh halaman yang mengoptimalkan metadata untuk SEO menggunakan HTML, CSS, dan JavaScript.">
	<meta property="og:image" content="URL_GAMBAR_THUMBNAIL">
	<meta property="og:url" content="URL_HALAMAN">
	<meta property="og:type" content="website">
	
	<!-- Twitter Card Metadata -->
	<meta name="twitter:card" content="summary_large_image">
	<meta name="twitter:title" content="Contoh SEO Metadata untuk HTML, CSS, dan JavaScript">
	<meta name="twitter:description" content="Ini adalah contoh halaman yang mengoptimalkan metadata untuk SEO menggunakan HTML, CSS, dan JavaScript.">
	<meta name="twitter:image" content="URL_GAMBAR_THUMBNAIL">
	<meta name="twitter:site" content="@UsernameTwitterKamu">
	
	<!-- Canonical Link -->
	<link rel="canonical" href="URL_HALAMAN">

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
	

	<!-- Carousel -->
	<div class="demo-2">
		<div class="page-view">
			@foreach ($gambar as $index => $carousel)
			<div class="project">
				<div style="background-image: url('{{ asset('storage/' . $carousel->path) }}'); background-size: cover; background-position: center; width: 100%; height: 100%;">
				</div>
				<h1 style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); color: white; font-size:50px;">Photoshoot</h1>
				
			</div>
			@endforeach
			<nav class="arrows">
				<div class="arrow previous">
					<svg viewBox="208.3 352 4.2 6.4">
						<polygon class="st0" points="212.1,357.3 211.5,358 208.7,355.1 211.5,352.3 212.1,353 209.9,355.1"/>
					</svg>
				</div>
				<div class="arrow next">
					<svg viewBox="208.3 352 4.2 6.4">
						<polygon class="st0" points="212.1,357.3 211.5,358 208.7,355.1 211.5,352.3 212.1,353 209.9,355.1"/>
					</svg>
				</div>
			</nav>
		</div>
	</div>
	<!-- Carousel -->

	<!-- About -->
    <div id="about" class="section wb">
        <div class="container">
			<div class="section-title text-center">
                <h3>Tentang Kami</h3>
                {{-- <p>Quisque eget nisl id nulla sagittis auctor quis id. Aliquam quis vehicula enim, non aliquam risus.</p> --}}
			</div>
            <div class="row mt-3">
				@foreach ($about as $abouts)
                <div class="col-md-6">
                    <div class="message-box">           
                        <h2 class="mb-3"> {{ $abouts->judul }}</h2>
                        <p class="text-dark" style="font-size: 17px"> {{ $abouts->text }}</p>
						<div style="padding-top: 20px">
							<a href="/tentang-kami" class="btn-primary hover-effect-new text-dark" ><span>Read More</span></a>
						</div>
                    </div><!-- end messagebox -->
                </div><!-- end col -->

                <div class="col-md-6">
                    <div class="right-box">
                        <div class="video-container">
							<iframe class="rounded" width="540" height="375" src="{{ $abouts->video }}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
						</div>
                    </div><!-- end media -->
                </div><!-- end col -->
				@endforeach
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end section -->
	<!-- About -->

	<!-- Service -->
	<div id="services" class="section lb py-4">
        <div class="container">
            <div class="section-title text-center ">
                <h3 class="text-dark">Layanan Kami</h3>
                <p class="text-dark">Kami Menawarkan Berbagai Layanan Sesuai Dengan Kebutuhan Anda</p>
			</div><!-- end title -->

            <div class="row">
				@foreach ($service as $layanan)
				<div class="col-md-4">
					<div class="effect-new">
						<div class="services-inner-box">
							<img class="img-fluid" src="{{ asset('storage/' . $layanan->image) }}" alt="">
							<h2>{{ $layanan->judul }}</h2>
							<p>{{ $layanan->detail }}</p>
							<a href="/layanan" class="btn-primary rounded hover-effect-new text-dark"><span>Read More</span></a>
						</div>
					</div>
                </div><!-- end col -->
                @endforeach
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end section -->
	<!-- Service -->

	<!-- Gallery -->
	<div id="gallery" class="section wb py-4">
		<div class="container">
			<div class="section-title text-center">
				<h3 class="text-dark">Galleri Kami</h3>
				<p class="text-dark">Jelajahi Galeri Kami Yang Mengagumkan Dengan Menampilkan Keindahan Dan Keberagaman Seni Dari Berbagai Sudut Pandang"</p>
			</div><!-- end title -->
		
			<div class="gallery-list row">
				@foreach ($gallery as $galeri)
				<div class="col-md-4 col-sm-6 gallery-grid photo_a">
					<div class="gallery-single fix">
						@if ($galeri->images)
							<img src="{{ asset('storage/' . $galeri->images->path) }}" class="img-fluid" alt="Image">
						@endif
						<div class="box-content">
							<div class="inner-content">
								<h3 class="title">{{ $galeri->texts->heading }}</h3>
							</div>
							<ul class="icon">
								<li><a href="{{ asset('storage/' . $galeri->images->path) }}" data-rel="prettyPhoto[gal]"><i class="fa fa-search"></i></a></li>								
							</ul>
						</div>
					</div>
				</div>
				@endforeach
				
			</div>
		</div>
	</div>
	<!-- Gallery -->

	<!-- Price -->
	<div id="pricing" class="section lb py-3">
		<div class="container">
			<div class="section-title text-center">
                <h3 class="text-dark">Harga</h3>
                <p class="text-dark">Jangan Lewatkan Pricelist Kami Untuk Menemukan Penawaran Yang Sesuai Dengan Kebutuhan Anda</p>
            </div><!-- end title -->
			
			<div class="row no-gutters pricing-table my-3 mx-2">
				@foreach ($price as $prices)
				<div class="col-lg-4 col-md-6 mb-4 px-4">
					<div class="card list-group text-center bg-alt">
						<div class="list-group-item  bg-dark">
							<h1 class="text-center text-white"><b>{{ $prices->judul }}</b><br></h1>
						</div>
						<ul class="list-group list-group-flush">
						  <li class="list-group-item">{{ $prices->item1 }}</li>
						  <li class="list-group-item">{{ $prices->item2 }}</li>
						  <li class="list-group-item">{{ $prices->item3 }}</li>
						  <li class="list-group-item">{{ $prices->item4 }}</li>
						  <li class="list-group-item">{{ $prices->item5 }}</li>
						  <div class="list-group-item ">
							<a href="/layanan"><button class="btn btn-secondary hover-effect-new btn-lg btn-block text-truncate "><span>Read More</span></button></a>
						</div>
						</ul>
					</div>
				</div>
				@endforeach
			</div>
			
		</div>
	</div>
	<!-- Price -->

	<!-- Team Member -->
	<div class="section wb team py-4">
		<div class="container">
			<div class="section-title text-center">
				<h3 class="text-dark">Tim Kami</h3>
				<p class="text-dark">Kami Memiliki Tim Yang Ahli Dan Berpengalaman</p>
			</div><!-- end title -->
			
			<div class="row g-4">
				@foreach ($team as $tim)
				<div class="col-lg-3 col-md-6 wow bounceInUp" data-wow-delay="0.1s">
					<div class="team-item rounded border border-dark solid p-1 ">
						<img class="img-fluid rounded-top " src="{{ asset('storage/' . $tim->image) }}" alt="">
						<div class="team-content text-center py-3 rounded-bottom" style="background-color: #f9ba1f;">
							<h2 class="text-dark"><b>{{ $tim->judul }}</b></h2>
							<p class="text-dark mb-0">{{ $tim->detail }}</p>
						</div>
					</div>
				</div>
				@endforeach
			</div>
			
		</div>
	</div>
	<!-- Team Member -->

	<!-- Testimoni -->
	<div id="reviews" class="section wb parallaxie py-3" >
        <div class="container">
            <div class="section-title text-center">
                <h3>Testimoni</h3>
                <p>Kami Berterima Kasih Atas Semua Testimoni Kami Yang Luar Biasa!</p>
            </div><!-- end title -->

            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <div class="testi-carousel owl-carousel">
						@foreach ($testimoni as $review)
                        <div class="testimonial clearfix">
							<figure class="testimonial_img">
								<img src="{{ asset('storage/' . $review->image) }}" alt="" class="img-fluid">
							</figure>
                            <div class="desc">
                                <h3><i class="fa fa-quote-left"></i> {{ $review->job }}</h3>
                                <p>{{ $review->description }}</p>
                            </div>
                            <div class="testi-meta">
                                <h4>{{ $review->name }} </h4>
                            </div>
                            <!-- end testi-meta -->
                        </div>
                        @endforeach
                    </div><!-- end carousel -->
                </div><!-- end col -->
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end section -->
	<!-- Testimoni -->

	{{-- <div id="pricing" class="section lb">
		<div class="container">
			<div class="section-title text-center">
                <h3>Prices</h3>
                <p>Quisque eget nisl id nulla sagittis auctor quis id. Aliquam quis vehicula enim, non aliquam risus.</p>
            </div><!-- end title -->

			<div class="row">
                <div class="col-md-4 col-sm-6 py-2 mb-2">
                    <div class="pricingTable">
                        <div class="pricingTable-header">
                            <svg x="0px" y="0px" viewBox="0 0 260 180">
                                <path fill="#f9ba1f" stroke-dasharray="5,5" stroke="#fff" d="M0,120c0,0,0-108.489,0-143.333C1.637,23.582,8.907,0,42.088,0C75.271,0,260,0,260,0v72.841
        	                    c0,0-2.667,37.424-43.877,45.563C177.693,125.992,6.26,90.42,0,150z"></path>
                                <text transform="matrix(1.0078 0 0 1 75.9497 50)" fill="#fff" font-size="23.726">STANDARD</text>
								<text transform="matrix(1.0078 0 0 1 62.9497 90)" fill="#fff" font-size="21.726">RP. 2.000.000</text>
                                
                            </svg>
                        </div>
                        <ul class="pricing-content">
                            <li>Lorem ipsum dolor </li>
                            <li>Lorem ipsum dolor</li>
                            <li>Lorem ipsum dolor</li>
                            <li>Lorem ipsum dolor</li>
                            <li>Lorem ipsum dolor</li>
                        </ul>
                        <div class="pricingTable-signup">
                            <svg x="0" y="0" viewBox="-35 0 160 30">
                                <a href="#">
                                    <path fill="#fff" d="M13.12,5.867c17.786-0.834,68.654-5.473,68.654-5.473s8.203-1.945,7.445,5.473
                                    c-0.757,7.417-4.037,16.782-4.037,16.782s-1.667,5.881-9.719,6.932c-8.961,0.852-50.858-0.983-67.771,0
                                    c-2.718,0.158-9.935,0.256-7.446-7.66c2.736-9.18,3.408-10.459,3.408-10.459S5.647,5.86,13.12,5.867z"></path>
                                    <text transform="matrix(1 0 0 1 15.5055 21.0098)" fill="#34454D" font-size="10" font-weight="500">See More</text>
                                </a>
                            </svg>
                        </div>
                    </div>
                </div>

                <div class="col-md-4 col-sm-6 py-2 mb-2">
                    <div class="pricingTable">
                        <div class="pricingTable-header">
                            <svg x="0px" y="0px" viewBox="0 0 260 180">
                                <path fill="#f9ba1f" stroke-dasharray="5,5" stroke="#fff" d="M0,120c0,0,0-108.489,0-143.333C1.637,23.582,8.907,0,42.088,0C75.271,0,260,0,260,0v72.841
        	                    c0,0-2.667,37.424-43.877,45.563C177.693,125.992,6.26,90.42,0,150z"></path>
                                <text transform="matrix(1.0078 0 0 1 75.9497 50)" fill="#fff" font-size="23.726">BUSSINES</text>
								<text transform="matrix(1.0078 0 0 1 62.9497 90)" fill="#fff" font-size="21.726">RP. 4.000.000</text>
                                
                            </svg>
                        </div>
                        <ul class="pricing-content">
                            <li>Lorem ipsum dolor </li>
                            <li>Lorem ipsum dolor</li>
                            <li>Lorem ipsum dolor</li>
                            <li>Lorem ipsum dolor</li>
                            <li>Lorem ipsum dolor</li>
                        </ul>
                        <div class="pricingTable-signup">
                            <svg x="0" y="0" viewBox="-35 0 160 30">
                                <a href="#">
                                    <path fill="#fff" d="M13.12,5.867c17.786-0.834,68.654-5.473,68.654-5.473s8.203-1.945,7.445,5.473
                                    c-0.757,7.417-4.037,16.782-4.037,16.782s-1.667,5.881-9.719,6.932c-8.961,0.852-50.858-0.983-67.771,0
                                    c-2.718,0.158-9.935,0.256-7.446-7.66c2.736-9.18,3.408-10.459,3.408-10.459S5.647,5.86,13.12,5.867z"></path>
                                    <text transform="matrix(1 0 0 1 15.5055 21.0098)" fill="#34454D" font-size="10" font-weight="500">See More</text>
                                </a>
                            </svg>
                        </div>
                    </div>
                </div>

                <div class="col-md-4 col-sm-6 py-2 mb-2">
                    <div class="pricingTable">
                        <div class="pricingTable-header">
                            <svg x="0px" y="0px" viewBox="0 0 260 180">
                                <path fill="#f9ba1f" stroke-dasharray="5,5" stroke="#fff" d="M0,120c0,0,0-108.489,0-143.333C1.637,23.582,8.907,0,42.088,0C75.271,0,260,0,260,0v72.841
        	                    c0,0-2.667,37.424-43.877,45.563C177.693,125.992,6.26,90.42,0,150z"></path>
                                <text transform="matrix(1.0078 0 0 1 75.9497 50)" fill="#fff" font-size="23.726">PREMIUM</text>
								<text transform="matrix(1.0078 0 0 1 62.9497 90)" fill="#fff" font-size="21.726">RP. 0.000.000</text>
                            </svg>
                        </div>
                        <ul class="pricing-content">
                            <li>Lorem ipsum dolor </li>
                            <li>Lorem ipsum dolor</li>
                            <li>Lorem ipsum dolor</li>
                            <li>Lorem ipsum dolor</li>
                            <li>Lorem ipsum dolor</li>
                        </ul>
                        <div class="pricingTable-signup">
                            <svg x="0" y="0" viewBox="-35 0 160 30">
                                <a href="#">
                                    <path fill="#fff" d="M13.12,5.867c17.786-0.834,68.654-5.473,68.654-5.473s8.203-1.945,7.445,5.473
                                    c-0.757,7.417-4.037,16.782-4.037,16.782s-1.667,5.881-9.719,6.932c-8.961,0.852-50.858-0.983-67.771,0
                                    c-2.718,0.158-9.935,0.256-7.446-7.66c2.736-9.18,3.408-10.459,3.408-10.459S5.647,5.86,13.12,5.867z"></path>
                                    <text transform="matrix(1 0 0 1 15.5055 21.0098)" fill="#34454D" font-size="10" font-weight="500">See More</text>
                                </a>
                            </svg>
                        </div>
                    </div>
                </div>

				
            </div>
			
		</div>
	</div> --}}

	

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
	<script src="{{ asset('js/jquery.gmaps.js') }}"></script>	
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

	<!-- SEO Structur Data -->
    <script type="application/ld+json">
        {
          "@context": "https://schema.org",
          "@type": "Organization",
          "name": "Nama Organisasi",
          "url": "https://www.namaorganisasi.com",
          "logo": "https://www.namaorganisasi.com/logo.png",
          "contactPoint": {
            "@type": "ContactPoint",
            "telephone": "+1-800-555-1212",
            "contactType": "Customer Service"
          },
          "sameAs": [
            "https://www.facebook.com/namaorganisasi",
            "https://www.twitter.com/namaorganisasi",
            "https://www.instagram.com/namaorganisasi"
          ]
        }
    </script>  
</body>
</html>