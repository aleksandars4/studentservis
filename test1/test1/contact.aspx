<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="test1.contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>StudentServis</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <link href ="StyleSheet.css" rel="stylesheet">
    <style>
        #btn_Pocetna {
            background-color: #111;
            background-size: cover;
            display: flex;
            justify-content: space-around;
            color: #9df2fd;
            border: 2px solid #9df2fd;
            padding: 2px 2px;
            margin-top: 50px;
        }
        .child1 button{
            margin-top:365px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class ="container">
                <div class ="contact-parent">
                    <div class ="contact-child child1">
                        <p>
                            <i class ="fas fa-map-marker-alt"></i> Adresa: </br>
                            <span> Aleksandra Medvedeva br. 20,
                                </br>
                                18000 Niš, Republika Srbija
                            </span>
                        </p>

                        <p>
                            <i class ="fas fa-phone-alt"></i> Telefon/fax: </br>
                            <span>018 588 211, 588 039 / 018 588 040</span>
                        </p>

                        <p>
                            <i class ="fas fa-envelope"></i> Email Adresa/oficijalni website: </br>
                            <span>odseknis@akademijanis.edu.rs / http://www.odseknis.akademija.edu.rs</span>
                            <asp:Button ID="btn_Pocetna" runat="server" Text="Pocetna" OnClick="btn_Pocetna_Click" CausesValidation="False" UseSubmitBehavior="False" />

                        </p>

                    </div>

                    <div class="contact-child child2">
                        <div class ="inside-contact">
                            <h2>Kontaktirajte nas</h2>
                            <h3>
                                <asp:Label ID="confirm" runat="server" Text=""></asp:Label>
                            </h3>

                            <p>Ime *</p>
                            <asp:TextBox ID="txt_name" runat="server" Required ="required"></asp:TextBox>

                            <p>Email *</p>
                            <asp:TextBox ID="txt_email" runat="server" Required ="required"></asp:TextBox>

                            <p>Telefon *</p>
                            <asp:TextBox ID="txt_phone" runat="server" Required ="required"></asp:TextBox>

                            <p>Naslov *</p>
                            <asp:TextBox ID="txt_subject" runat="server" Required ="required"></asp:TextBox>
                            
                            <p>Poruka *</p>
                            <asp:TextBox ID="txt_message" runat="server" Required ="required" TextMode ="MultiLine" Rows="4"></asp:TextBox>

                            <asp:Button ID="btn_send" runat="server" Text="POŠALJI" OnClick="btn_send_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
