<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentServis-StudentMode.aspx.cs" Inherits="test1.StudentServis_StudentMode" %>

<!DOCTYPE html>

<html>
    <head>
        <title>StudentServis - Sajt Za Prijavu Ispita</title>
        <link rel="stylesheet" href="style1.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.4.2/css/fontawesome.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>

        <!----------------navbar section------------------>

        <section id="nav-bar">
            <nav class="navbar navbar-expand-lg bg-body-tertiary">
                <div class="container-fluid">
                  <a class="navbar-brand" href="#"><img src="images/ss_logo_render_white.png"></a>
                  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                  </button>
                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                      <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#top">Pocetna</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="#services">O nama</a>
                      </li>
                      
                      <li class="nav-item">
                        <a class="nav-link" href="#">Prijave</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="#footer">Kontakti</a>
                      </li>
                      
                      <li class="nav-item">
                        <a class="nav-link" href="#">Odjava</a>
                      </li>
                    </ul>
                    <form class="d-flex" role="search">
                      <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                      <button class="btn btn-outline-success" type="submit">Search</button>
                    </form>
                  </div>
                </div>
              </nav>
        </section>

        <!----------------navbar section------------------>

        <section id="banner">
            <div class="container">
            <div class="row">
            <div class="col-md-6">
            <p class="promo-title">STUDENT SERVIS</p>
            <p>Spremni za uspeh na fakultetu? Otkrijte sve pogodnosti koje StudentServis pruža - pratite raspored ispita,
            upravljajte prijavama ispita i istražujte nove kurseve. Vaš ključ za uspeh u visokoškolskom obrazovanju je sada
            na dohvat ruke. Pridružite se StudentServisu i olakšajte svoj studentski život! </p>
             <a href="#"><img src="images/play.png" class="play-btn">Pratite nas na YouTube-u</a>
            </div>
            <div class="col-md-6">
            <img src="images/home2.png" class="img-fluid">
            </div>
            </div>
            </div>
            <img src="images/wave1.png" class="bottom-img">
        </section>

        <!----------------navbar section------------------>

        <section id="services">
        <div class="container text-center">
        <h1 class="title">CIME SE BAVIMO ?</h1>
        <div class="row text-center">
        <div class="col-md-4 services">
        <img src="images/service1.png" class="service-img">
        <h4>Prijave ispita olakšane kao nikad pre</h4>
        <p>Naša platforma omogućava studentima jednostavnu i efikasnu prijavu za ispite.
        Bez gužvi i čekanja, samo nekoliko klikova deli vas od uspešne prijave za sledeći ispit. 
        Upravljajte svojim akademskim putem sa lakoćom. </p>
        </div>
        <div class="col-md-4 services">
        <img src="images/service2.png" class="service-img">
        <h4>Prilagodite raspored prema svojim potrebama</h4>
        <p>StudentServis donosi revoluciju u organizaciju ispita. Prilagodite raspored predavanja i ispita prema
        ličnim preferencijama i obavezama. Više nema stresa oko sudaranja termina, jer raspored postaje vaš najbolji
        saveznik u efikasnom upravljanju vremenom. </p>
        </div>
        <div class="col-md-4 services">
        <img src="images/service3.png" class="service-img">
        <h4>Sveobuhvatan sistem podrške</h4>
        <p>Naša platforma nije samo za prijave i rasporede, već i za pružanje potpore tokom celog studentskog puta.
        Dobijte obaveštenja, savete i resurse koji vam pomažu da postignete akademski uspeh. 
        StudentServis - vaša ključna podrška u postizanju visokih ciljeva na fakultetu. </p>
        </div>
        </div>
        <button type="button" class="btn btn-primary">Ostale usluge</button>
        </div>
        </section>

        <!----------------about us------------------>
        <section id="about-us">
        <div class="container">
        <h1 class="title text-center">ZASTO ODABRATI NAS ?</h1>
        <div class="row">
        <div class="col-md-6 about-us">
        <p class="about-title">Mi smo drugaciji</p>
          <ul>
          <li>Jednostavna Prijava Ispita</li>
          <li>Personalizovani Rasporedi, Po Vašoj Meri</li>
          <li>Transparentna Komunikacija</li>
          <li>Posvećena Akademska Podrška</li>
          <li>Inovativne Tehnologije za Bolje Iskustvo</li>
          <li>Zajednica Koja Deli Vaše Ciljeve</li>
          </ul>
        </div>
        <div class="col-md-6">
        <img src="images/network.png" class="img-fluid">
        </div>
        </div>
        </div>
        </section>

        <!----------------testimonials------------------>

        <section id="testimonials">
          <div class="container">
          <h1 class="title text-center">STA STUDENTI KAZU ?</h1>
          <div class="row offset-1">
          <div class="col-md-5 testimonials">
            <p>Kao buduća vaspitačica, StudentServis je za mene pravi saveznik u organizaciji. Sistem za prijavu ispita je intuitivan,
              a praćenje različitih rasporeda časova mi pomaže da se lako pripremam za praktične vežbe. Ova platforma je prilagođena
              mom specifičnom obrazovnom putu, pružajući podršku u mom profesionalnom usavršavanju. 
              Sjajna zajednica i lakoća korišćenja čine je pravim izborom za studente poput mene.</p>
            <img src="images/user1.jpg">
            <p class="user-details"><b>Andjelina</b></br> Student Pedagogije</p>
          </div>
          <div class="col-md-5 testimonials">
            <p>Kao mladi student komunikacionih tehnologija, StudentServis mi je pružio nezamenjive resurse za upravljanje mojim
              akademskim obavezama. Brza prijava ispita, pregled rasporeda i lako praćenje rezultata su samo neki od razloga zbog
              kojih sam odabrao ovu platformu. Njihova posvećenost olakšavanju studentskog života kroz tehnologiju čini ih
              neprocenjivim partnerom na mom putu obrazovanja. </p>
            <img src="images/user2.jpg">
            <p class="user-details"><b>Aleksandar</b></br> Student Komunikacionih Tehnologija</p>
          </div>
          </div>
          </div>
        </section>


           
        <!----------------Social Media------------------>

        <section id="social-media">
        <div class="container text-center">
        <p>PRATITE NAS NA DRUSTVENIM MREZAMA</p>
          <div class="social-icons">
          <a href="#"><img src="images/facebook-icon.png" alt=""></a>
          <a href="#"><img src="images/instagram-icon.png" alt=""></a>
          <a href="#"><img src="images/twitter-icon.png" alt=""></a>
          <a href="#"><img src="images/whatsapp-icon.png" alt=""></a>
          <a href="#"><img src="images/linkedin-icon.png" alt=""></a>
          <a href="#"><img src="images/snapchat-icon.png" alt=""></a>
          </div>
        </div>
        </section>

        <!----------------Footer------------------>

        <section id="footer">
        <img src="images/wave2.png" class="footer-img">
        <div class="container">
        <div class="row">
        <div class="col-md-4 footer-box">
        <img src="images/sslogo.png">
        <p>StudentServis je deo ATVSS-a, posvećen unapređenju studentskog iskustva. 
        Kontaktiraj nas za vise!</p>
        </div>
        <div class="col-md-4 footer-box">
        <p><b>KONTAKTIRAJTE NAS</b></p>
        <p><i class="fa fa-map-marker"></i> Aleksandra Medvedeva 20, 18000 Niš, Srbija</p>
        <p><i class="fa fa-phone"></i> +381 18 588 039</p>
        <p><i class="fa fa-envelope-o"></i> info@akademijanis.edu.rs</p>
        </div><div class="col-md-4 footer-box">
        <p><b>PRATITE NOVOSTI</b></p>
        <input type="email" class="form-control" placeholder="Vas E-mail">
        <button type="button" class="btn btn-primary">Posalji</button>
        </div>
        </div>
          <hr>
          <p class="copyright">Aleksandar Savic | REK07/20 | KOT | ATVSS - Nis | © 2023</p>
        </div>
        </section>
        <!----------------Smooth Scroll------------------>
        <script src="smooth-scroll.js">
	          var scroll = new SmoothScroll('a[href*="#"]');
        </script>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</html>
