<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prijava-StudentMode.aspx.cs" Inherits="test1.Prijava_StudentMode" %>

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
        <form id="form1" runat="server">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <div>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>

                    
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
                    <!--<form class="d-flex" role="search">
                      <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                      <button class="btn btn-outline-success" type="submit" >Search</button>
                    </form>-->
                  </div>
                </div>
              </nav>
        </section>

        <!----------------navbar section------------------>

        <section id="banner">
            <div class="container">
            <div class="row">
            <div class="col-md-6">
            <p class="promo-title">PRIJAVE</p>
            <p>Dobrodosli na stranicu za prijavu ispita! Ovde mozete uneti podatke za prijavu ispita odredjenog studenta.</p>
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
        <h1 class="title">DODAVANJE PRIJAVLJENIH ISPITA</h1>
        <div class="row text-center">
        </div>
        </div>
        </section>
        <!-----------prijave-StudentMode---------------->

        <center>
            <section>
            <table class="auto-style1">
            <tr>
                <th colspan="5">
                    <br />
                    Parametri za pretragu prijava<hr />
                </th>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style1">Ime</td>
                <td class="auto-style1">Broj Indeksa</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="txtID2" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtID3" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Pretrazi" OnClick="Button1_Click" />
                </td>
                <td>
                    &nbsp;</td>
    
            </tr>
            
            <tr>
                <td>
    
                    &nbsp;</td>
            </tr>
                <tr>
                    <th colspan="5">
                        <hr />
                    </th>
                </tr>
        </table>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Naziv" HeaderText="Naziv" />
                        <asp:BoundField DataField="Ocena" HeaderText="Ocena" />
                        <asp:BoundField DataField="LabVezbe" HeaderText="LabVezbe" />
                        <asp:BoundField DataField="Kol1" HeaderText="Kol1" />
                        <asp:BoundField DataField="Kol2" HeaderText="Kol2" />
                        <asp:BoundField DataField="DatumPrijave" HeaderText="DatumPrijave" />
                        <asp:BoundField DataField="Ime" HeaderText="Ime" />
                        <asp:BoundField DataField="Prezime" HeaderText="Prezime" />
                        <asp:BoundField DataField="BrInd" HeaderText="BrInd" />
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
                </center>
                </section>
                <div class="request">
                    <p>U ovom odeljku mozete pratiti trenutne prijave ispita,<br>
                        <br></br>
                        ukoliko zelite da prijavite ispit, molim vas da unesete vase podatke u odeljku <a href="contact.aspx">Kontakti</a>,<br>
                        <br></br>
                        i takodje dodate uplatnicu za trenutni ispitni rok. </br>
                        </br>
                    </p>
                    <p style="color:red;">
                        * Ukoliko imate problema, ne vidite svoju prijavu ili slicno,<br>
                        <br></br>
                        molim vas obratite se studentskoj sluzbi na sledecem e-mailu,<br>
                        <br></br>
                        ili pozovite sledece brojeve: </br>
                        </br>
                    </p>
                    <span>018 588 211, 588 039 / 018 588 040</span><br>
                    <br></br>
                    <span>odseknis@akademijanis.edu.rs / http://www.odseknis.akademija.edu.rs</span> </br>
                </div>

  
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
                        </ContentTemplate>
                </asp:UpdatePanel>
        </div>
        </form>
        <!----------------Smooth Scroll------------------>
        <script src="smooth-scroll.js">
	          var scroll = new SmoothScroll('a[href*="#"]');
        </script>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</html>