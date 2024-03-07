<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="test1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }

        #Label1 {
            text-align: center;
            padding-left: 20px;
            padding-bottom: 10px;
            cursor: pointer;
        }

        .login-container {
            width: 300px;
            margin: 150px auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
        }

        .form-group input {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }

        .form-group #btnLogin {
            background-color: #2f4f8f;
            color: #fff;
            border: none;
            padding: 10px;
            border-radius: 3px;
            cursor: pointer;
        }

        .form-group #btnLogin:hover {
            background-color: #333;
        }

        .form-group #btnReg {
            margin-top: 10px;
            background-color: #507CD1;
            color: #fff;
            border: none;
            padding: 10px;
            border-radius: 3px;
            cursor: pointer;
        }

        .form-group #btnReg:hover {
            background-color: #333;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <h2>Prijavi se</h2>
            <div class="form-group">
                <label for="txtUsername">Korisnicko ime:</label>
                <input type="text" id="txtUsername" runat="server" />
            </div>
            <div class="form-group">
                <label for="txtPassword">Sifra:</label>
                <input type="password" id="txtPassword" runat="server" />
            </div>
            <div class="form-group">
                <asp:Button runat="server" id="btnLogin" Text="Prijavi se" OnClick="btnLogin_Click" /> </br>

                <asp:Button runat="server" id="btnReg" Text="Registruj se" /> </br>

                <asp:Label ID="lblLoginError" runat="server" Text=""></asp:Label>

            </div>
        </div>
    </form>

</body>
</html>
