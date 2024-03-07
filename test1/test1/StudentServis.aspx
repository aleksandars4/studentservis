<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentServis.aspx.cs" Inherits="test1.StudentServis" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>StudentServis - Sajt Za Prijavu Ispita</title>
        <link rel="stylesheet" href="StyleSheet1.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.4.2/css/fontawesome.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
        .auto-style3 {
            height: 26px;
            width: 168px;
        }
        .auto-style4 {
            width: 168px;
        }
        .btn-logout {
            display: block;
            background-color: #333;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            border: none;
            font-size: 16px;
            float: right;
        }
        .btn-logout:hover {
            background-color: rgb(138, 40, 40);
        }
        tbody, td, tfoot, th, thead, tr {
            padding: 5px;
        }
        #btnPretraga {
            background-color: #507cd1;
            border: none;
            color: white;
            padding: 2px 12px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
        }
        #btnPretraga:hover {
            background-color: #333;
            transition:0.5s;
        }
        #Button1 {
            background-color: #507cd1;
            border: none;
            color: white;
            padding: 2px 12px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
        }
        #Button1:hover {
            background-color: #333;
            transition:0.5s;
        }
        #btnPretraga0 {
            background-color: #507cd1;
            border: none;
            color: white;
            padding: 2px 12px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
        }
        #btnPretraga0:hover {
            background-color: #333;
            transition:0.5s;
        }
        .auto-style5 {
            height: 209px;
        }
        #DropDownList2 {
            height: 28px;
        }
        
    </style>
    
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
                      <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                          Pretraga
                        </a>
                        <ul class="dropdown-menu">
                          <li><a class="dropdown-item" href="#pofakultetu">Po Fakultetu</a></li>
                          <li><a class="dropdown-item" href="#popredmetima">Po Predmetima</a></li>
                          <li><hr class="dropdown-divider"></li>
                          <li><a class="dropdown-item" href="#postudentima">Po Studentima</a></li>
                          <li><a class="dropdown-item" href="#ostalo">Ostali Podaci</a></li>
                        </ul>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="prijave1.aspx">Prijave</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="contact.aspx">Kontakti</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="#author">O Autoru</a>
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
            <center>
        <form id="forma1" runat="server">
        
            <section id="pofakultetu">
        <br />
        <table class="auto-style1">
        <tr>
            <th colspan="6">
                <br />
                Parametri za pretragu - Fakulteti<hr />
            </th>
        </tr>
        <tr>
            <td class="auto-style3">ID</td>
            <td class="auto-style1">Naziv</td>
            <td class="auto-style1">Odsek</td>
            <td class="auto-style1">Adresa</td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" PlaceHolder="Izaberi Naziv" AutoPostBack="true" Height="27.2px" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                <asp:TextBox ID="txtOdsek" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="txtAdresa" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btnPretraga" runat="server" Text="Traži" OnClick="btnPretraga_Click" />
            </td>
        </tr>
        <th colspan="6">
            <hr />
        </th>
    </table>      
        <div class ="grid">
            <asp:GridView ID="GridFakulteti" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowEditing="GridFakulteti_RowEditing" BorderStyle="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" />
                    <asp:BoundField DataField="Naziv" HeaderText="Naziv" />
                    <asp:BoundField DataField="Odsek" HeaderText="Odsek" />
                    <asp:BoundField DataField="Adresa" HeaderText="Adresa" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <br />
        </div>
            </section>

            <section id="popredmetima">
        <br />
        <table class="auto-style1">
        <tr>
            <th colspan="6">
                <br />
                Parametri za pretragu - Predmeti<hr />
            </th>
        </tr>
        <tr>
            <td class="auto-style1">ID</td>
            <td class="auto-style1">Naziv</td>
            <td class="auto-style1">Profesor</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" Height="27.2px">
                    <asp:ListItem Text="Izaberi Naziv" Value="" />
                </asp:DropDownList>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Traži" OnClick="btnPretraga2_Click" />
            </td>
        </tr>
        <th colspan="6">
            <hr />
        </th>
    </table>      
        <div class ="grid1">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowEditing="GridView1_RowEditing">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" />
                    <asp:BoundField DataField="Naziv" HeaderText="Naziv" />
                    <asp:BoundField DataField="Profesor" HeaderText="Profesor" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <br />
        </div>
            </section>
    

            </center>
        </div>


        <section id="postudentima">
        <br />
        <center>
        <table class="auto-style1">
        <tr>
            <th colspan="5">
                <br />
                Parametri za pretragu - Studenti<hr />
            </th>
        </tr>
        <tr>
            <td class="auto-style1">ID</td>
            <td class="auto-style1">Ime</td>
            <td class="auto-style1">Prezime</td>
            <td class="auto-style1">Broj Indeksa</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtID2" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="txtIme" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="txtPrezime" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server" Height="27.2px">
                    <asp:ListItem Text="Broj Indeksa" Value="" />
                </asp:DropDownList>
            </td>
            <td>

                <asp:Button ID="btnPretraga0" runat="server" Text="Traži" OnClick="btnPretraga3_Click" />

            </td>
            <td>
                &nbsp;</td>
        </tr>
        <th colspan="5">
            <hr />
        </th>
    </table>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowEditing="GridView2_RowEditing">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" />
                    <asp:BoundField DataField="Ime" HeaderText="Ime" />
                    <asp:BoundField DataField="Prezime" HeaderText="Prezime" />
                    <asp:BoundField DataField="BrInd" HeaderText="Broj Indeksa" />
                    <asp:BoundField DataField="DatumRodj" HeaderText="Datum Rodjenja" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
            </section>

            <section id="ostalo">
            <br />
                <center>
        <table class="auto-style1">
        <tr>
            <th colspan="5">
                <br />
                OSTALI PODACI<hr />
            </th>
        </tr>
        <tr>
            <td class="auto-style1">Trenutni Broj
                <br />
                Studenata:</td>
            <td class="auto-style1">Prosecna Ocena<br />
                Svih Studenata:</td>
            <td class="auto-style1">Ukupan Broj Svih<br />
                Ocena:</td>
            
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
            
        </tr>
        <th colspan="5">
            <hr />
        </th>
    </table>
            <br />
        <table class="auto-style1">
        <tr>
            <th colspan="3">
                <hr />
            </th>
        </tr>
        <tr>
            <td class="auto-style1">Broj Studenata Po Odseku:</td>
            <td class="auto-style1">Broj Prijava Ispita Po Studentu:</td>
            <td class="auto-style1">&nbsp;</td>
            
        </tr>
        <tr>
            <td class="auto-style5">
            <asp:GridView class="auto-style1" ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" />
                    <asp:BoundField DataField="Odsek" HeaderText="Odsek" />
                    <asp:BoundField DataField="BrojStudenataPoOdseku" HeaderText="Broj Studenata Po Odseku" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            </td>
            <td class="auto-style5">
                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" />
                        <asp:BoundField DataField="ImeIPrezime" HeaderText="Ime i Prezime" />
                        <asp:BoundField DataField="BrojPrijava" HeaderText="Broj Prijava" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </td>
            <td class="auto-style5">
                </td>
            
        </tr>
        <th colspan="3">
            <hr />
        </th>
    </table>
            <br />
            <br />
            <br />
            </section>

            </center>
        <br />
        </form>
    <!----------------about author------------------>

        <section id="author">
          <div class="container text-center">
          <hr>
          <h1 class="title">O AUTORU</h1>
          <div class="row text-center">
          <div class="col-md-4 services">
          <h4>Cilj i Vizija Projekta</h4>
          <p>Cilj ovog projekta je stvoriti platformu koja će olakšati administraciju baze podataka,
          posebno u kontekstu prijava ispita i praćenja finansijskih transakcija. Moja vizija je bila stvoriti
          intuitivan sistem koji će koristiti i studentima i administratorima, smanjujući njihov napor pri obavljanju
          školskih zadataka i administrativnih dužnosti.
          </p>
          </div>
          <div class="col-md-4 services">
          <img src="images/useric.png" class="service-img">
          <h4>Lični Podaci</h4>
          <p>Moje ime je Aleksandar Savić, student ATVSS-a, odseka KOT, ideolog i osnivač ovog sajta.
          Kroz godine rada u oblasti web razvoja, stekao sam strast prema stvaranju korisnih i efikasnih alatki
          koje olakšavaju svakodnevne zadatke. Ovaj sajt je proizvod moje posvećenosti tehnologiji i obrazovanju,
          a takođe i rezultat mog završnog rada iz predmeta Administriranje Baze Podataka.</p>
          </div>
          <div class="col-md-4 services">
          <h4>Zahvalnost</h4>
          <p>Na kraju, želim da se zahvalim svima koji su podržali ovaj projekat, bilo to kroz savete,
          testiranje ili moralnu podršku..
          Nadam se da će ova platforma biti od velike koristi nekome kome je zaista potrebna.
          Ako imate bilo kakvih pitanja ili povratnih informacija, slobodno me kontaktirajte.
          Email: kot0720@vtsnis.rs</p>
          </div>
          </div>
          <hr>
          </div>
          <!--<button type="button" class="btn btn-primary">Ostale usluge</button>-->
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
    
</body>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</html>
