<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prijave1.aspx.cs" MaintainScrollPositionOnPostBack="true" Inherits="test1.Prijave1" %>

<!DOCTYPE html>

<html>
<head>
    <title>StudentServis - Sajt Za Prijavu Ispita</title>
        <link rel="stylesheet" href="StyleSheet1.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.4.2/css/fontawesome.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <style type="text/css">
        .auto-style1 {
            height: 26px;
            width: 731px;
        }

        .listboxTable {
            width: 50%;
            margin: 0 auto;
            text-align: center;
        }
            .listboxTable span {
                text-align:left;
            }
        tbody, td, tfoot, th, thead, tr {
            padding: 5px;
        }
        .auto-style12 {
            height: 33px;
        }
        .auto-style14 {
            width: 719px;
            height: 2px;
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
    </style>
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
                        <a class="nav-link active" aria-current="page" href="StudentServis.aspx">Pocetna</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="#services">O nama</a>
                      </li>
                      <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                          Pretraga
                        </a>
                        <ul class="dropdown-menu">
                          <li><a class="dropdown-item" href="#">Po Fakultetu</a></li>
                          <li><a class="dropdown-item" href="#">Po Predmetima</a></li>
                          <li><hr class="dropdown-divider"></li>
                          <li><a class="dropdown-item" href="#">Po Studentima</a></li>
                          <li><a class="dropdown-item" href="#">Ostali Podaci</a></li>
                        </ul>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="#dodavanje">Prijave</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="contact.aspx">Kontakti</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="#">O Autoru</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="#">Odjava</a>
                      </li>
                    </ul>
                    <!--<form class="d-flex" role="search">
                      <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                      <button class="btn btn-outline-success" type="submit">Search</button>
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

        <section id ="dodavanje">
        <div class="content">
      
        <center>
            
        <table class="auto-style1">
        <tr>
            <th colspan="5">
                <hr />
                Parametri za prijavu studenata<hr class="auto-style14" />
            </th>
        </tr>
            <table style="width: 50%;">
                <tr>
                    <td>Ime i prezime studenta:<br />
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>Izaberi Ime Studenta</asp:ListItem>
                </asp:DropDownList>
                        <br />
                        <br />
                        <asp:Label ID="Label1" Visible="false" runat="server" Text="Podaci o studentu:"></asp:Label>
                        <br />
                        <asp:ListBox ID="ListBox1" runat="server" Visible="false" AutoPostBack="True" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged"></asp:ListBox>
                    </td>
                    <td>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">Izaberi naziv:<br />
                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                    <asp:ListItem>Izaberi Naziv Predmeta</asp:ListItem>
                </asp:DropDownList>
                        <br />
                        <br />
                        <asp:Label ID="Label2" Visible="false" runat="server" Text="Podaci o predmetu:"></asp:Label>
                        <br />
                        <asp:ListBox ID="ListBox2" runat="server" Visible="false" AutoPostBack="True" OnSelectedIndexChanged="ListBox2_SelectedIndexChanged"></asp:ListBox>
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td>Lab Vezbe:<br />
                <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Ima" />
                <asp:CheckBox ID="CheckBox2" runat="server" Text="Nema" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Ocena:<br />
                <asp:TextBox ID="txtAdresa" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Kolokvijum 1:<br />
                <asp:TextBox ID="txtAdresa0" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Kolokvijum 2:<br />
                <asp:TextBox ID="txtAdresa1" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Datum Prijave:<br />

                <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>

                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <br />
                        Dodaj Prijavu:</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                <asp:Button ID="Button1" runat="server" Text="Dodaj" OnClick="Button1_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                
            </table>
        
        <th colspan="5">
        </th>
    </table>      
            <hr class="auto-style14" />
            
            
            <br />
            
            
            <asp:Label ID="Label3" Visible="false" runat="server" Text="Uspesno uneta prijava!"></asp:Label>
            
            <br />
            <br />
            <br />
            <br />
            <br />
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
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" />
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
        <table class="auto-style1">
        <tr>
            <th colspan="3">
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
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
            </td>
            
        </tr>
        <th colspan="3">
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
            <asp:GridView class="auto-style1" ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="me-0" Width="410px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="fakultet_id" HeaderText="ID" />
                    <asp:BoundField DataField="fakultet_odsek" HeaderText="Odsek" />
                    <asp:BoundField DataField="broj_studenata" HeaderText="Broj Studenata Po Odseku" />
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
            &nbsp;</td>
            <td class="auto-style5">
                &nbsp;&nbsp;
                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="407px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="ID" />
                        <asp:BoundField DataField="student_ime_prezime" HeaderText="Ime i Prezime" />
                        <asp:BoundField DataField="broj_prijava" HeaderText="Broj Prijava" />
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
        <table class="auto-style1">
        <tr>
            <th colspan="2">
                <br />
                STUDENTI KOJI SU POLOZILI PREDMET<hr />
            </th>
        </tr>
        <tr>
            <td class="auto-style1">Izaberi Predmet:</td>
            <td class="auto-style1">Student/i koji su polozio/li:</td>
            
        </tr>
        <tr>
            <td>
                <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td>
                <asp:ListBox ID="ListBox3" runat="server" Visible="False"></asp:ListBox>
            </td>
            
        </tr>
        <th colspan="2">
            <hr />
        </th>
    </table>
            <br />
    </center>
            

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
    </ContentTemplate>
            </asp:UpdatePanel>
    </div>
    </form>
        <!----------------Smooth Scroll------------------>
        <script src="smooth-scroll.js">
	          var scroll = new SmoothScroll('a[href*="#"]');
        </script>
</body>
</html>
