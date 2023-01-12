<!DOCTYPE html>
<html lang="en">
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Desa Sumberkedawung - Pojok UMKM</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Medicio - v4.9.1
  * Template URL: https://bootstrapmade.com/medicio-free-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>
<body>

  <!-- ======= Top Bar ======= -->
  <div id="topbar" class="d-flex align-items-center fixed-top">
  </div>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">

      <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt=""></a>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <h1 class="logo me-auto"><a href="index.html">Medicio</a></h1> -->

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="nav-link scrollto" href="/">HOME</a></li>
          <li class="dropdown"><a href="/profil"><span>Profil</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a class="nav-link" href="/sejarah">Sejarah Desa</a></li>
              <li><a class="nav-link" href="/visimisi">Visi dan Misi</a></li>
              <li><a class="nav-link" href="/sotk">Struktur Organisasi dan Tata Kerja</a></li>
              <li><a class="nav-link" href="/kelembagaan">Kelembagaan</a></li>
              <li><a class="nav-link" href="/potensi">Potensi Desa</a></li>
              <li><a class="nav-link" href="/asetdesa">Aset Desa</a></li>
            </ul>
          </li>
          <li><a class="nav-link scrollto" href="/datadesa">Data Desa</a></li>
          <li class="dropdown"><a href="/informasi"><span>INFORMASI LAYANAN</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="/ktp">Pembuatan KTP</a></li>
              <li><a href="/kk">Pembuatan KK</a></li>
              <li><a href="/aktekelahiran">Pembuatan Akte Kelahiran</a></li>
              <li><a href="/aktekematian">Pembuatan Akte Kematian</a></li>
              <li><a href="/pindahdomisili">Prosedur Pindah Domisili</a></li>
              <li><a href="/izinkeramaian">Pembuatan Surat Izin Keramaian</a></li>
              <li><a href="http://bphtb.probolinggokab.go.id/" target="_blank">Cek PBB</a></li>
            </ul>
          </li>
          <li><a class="nav-link scrollto" href="/event">EVENT</a></li>
          <li><a class="nav-link scrollto" href="/berita">BERITA</a></li>
          <li><a class="nav-link scrollto" href="/galeri">GALERI</a></li>
          <li><a class="nav-link scrollto" href="/umkm">POJOK UMKM</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->
      
    </div>
  </header><!-- End Header -->
  <!-- ======= Hero Section ======= -->
  <section>
  </section><!-- End Hero -->


  <section id="services" class="services services">
      <div class="container" data-aos="fade-up">
        <div class="section-title">
          <h2>UMKM Desa Sumberkedawung</h2>
        </div>
        
        <div class="row">
        @foreach ($umkm as $umkm)
          <div class="col-lg-4 col-md-6 icon-box" data-aos="zoom-in" data-aos-delay="100">
          <img src="/image/{{$umkm->image}}" alt="" class="img-fluid" width="100">
            <h4>{{$umkm->title}}</h4>
            <p>{{$umkm->description}}</p>    
          </div>
          @endforeach
        </div>
    
      </div>
    </section><!-- End Services Section -->
  <main>
  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6">
            <div class="footer-info">
              <h3>Sumberkedawung</h3>
              <p>
                Kec. Leces <br>
                Kab. Probolinggo<br><br>
                <strong>Phone:</strong> +1 5589 55488 55<br>
                <strong>Email:</strong> info@example.com<br>
              </p>
              <div class="social-links mt-3">
                <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
                <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
                <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
                <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
                <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
              </div>
            </div>
          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="/beranda">Beranda</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="/profil">Profil</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="/informasi">Informasi Layanan</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="/berita">Berita</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="/galeri">Galeri</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Layanan Desa</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="/kk">Pembuatan KTP</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="/ktp">Pembuatan Kartu Keluarga</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="/aktekelahiran">Pembuatan Akte Kelahiran</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="/aktekematian">Pembuatan Akte Kematian</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="/pindahdomisili">Prosedur Pindah Domisili</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="/izinkeramaian">Pembuatan Surat Izin Keramaian</a></li>
            </ul>
          </div>

        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>Kelompok 4 - Fakultas Vokasi Universitas Brawijaya</span></strong>.
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/medicio-free-bootstrap-theme/ -->
      </div>
    </div>
  </footer><!-- End Footer -->

  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>
</html>