<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prijava.aspx.cs" Inherits="test1.Prijava" %>

<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8" />
    <title>Student Servis</title>
    <link rel="stylesheet" href="style.css">
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>

            
            <div class="container">

        <div class="header">
            <h1>Student Servis</h1>
            <ul>
                <li><a href="default.html">Pocetna</a></li>
                <li><a href="StudentServis.aspx">Pretraga</a></li>
                <li><a class="active" href="Prijava.aspx">Prijave</a></li>
                <li><a href="contact.aspx">Kontakti</a></li>
                <li><a href="about.html">O Autoru</a></li>
            </ul>
        </div>
        <div class="content">
      
        <center>
        <table class="auto-style1">
        <tr>
            <th colspan="5">
                <br />
                Parametri za prijavu studenata<hr />
            </th>
        </tr>
        <tr>
            <td class="auto-style3">Naziv</td>
            <td class="auto-style1">Ocena</td>
            <td class="auto-style1">LabVezbe</td>
            <td class="auto-style1">Kol1</td>
            <td class="auto-style1">Kol2</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                <asp:TextBox ID="txtID0" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="txtID1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="txtAdresa" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="txtAdresa0" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Datum</td>
            <td class="auto-style1">Ime</td>
            <td class="auto-style1">Prezime</td>
            <td class="auto-style1">BrInd</td>
            <td class="auto-style1">Dodaj Prijavu</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList4" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList5" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Dodaj" OnClick="Button1_Click" />
            </td>

        </tr>
        <tr>
            <td>

                <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>

            </td>
        </tr>
        <th colspan="5">
            <hr />
        </th>
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

        </div>
        <div class="footer">
            <footer>
                <div class="footer-content">
                    <img src="http://upis.vtsnis.edu.rs/wp-content/uploads/2020/04/cropped-Logo-akademije-Nis-2020-bez-teksta-1.png" alt="Slika futera">
                    <p>Aleksandar Savic | REK07/20 | KOT | ATVSS - Nis | © 2023</p>
                </div>
            </footer>
        </div>
                </ContentTemplate>
        </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
