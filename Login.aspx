<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Final_Assignment_440.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title></title>
    <style type="text/css">
        .auto-style31 {
            margin-left: 0px;
            text-align: center;
        }
        .auto-style37 {
            text-align: center;
        }
        .auto-style38 {
            color: #000000;
        }
        .auto-style39 {
            color: #000000;
            font-size: x-large;
        }
        .auto-style40 {
            text-align: center;
            color: #CC0000;
            font-family: "Leelawadee UI";
        }
        .auto-style41 {
            font-size: large;
            color: #000000;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1 class="auto-style40" style="font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-size: 75px;">CinePrime</h1>
        <p class="auto-style37" style="font-family: 'Leelawadee UI'; color: #9900FF">
            &nbsp;</p>
        <p class="auto-style37" style="font-family: 'Leelawadee UI'; color: #9900FF">
            <strong><span class="auto-style39">Login</span></strong></p>
        <p class="auto-style37" style="font-family: 'Leelawadee UI'; color: #9900FF">
            &nbsp;</p>
        <p class="auto-style37" style="font-family: 'Leelawadee UI'; color: #9900FF">
                        <asp:Label ID="lblUsername" runat="server" Text="Enter Username:" Font-Names="Leelawadee UI" CssClass="auto-style38"></asp:Label>
                        <asp:Label ID="lblLoginNameError" runat="server" ForeColor="#FF3300"></asp:Label>
                    </p>
        <p class="auto-style37" style="font-family: 'Leelawadee UI'; color: #9900FF">
                        <asp:TextBox ID="txtUserName" runat="server" Width="250px"></asp:TextBox>
                        </p>
        <p class="auto-style37" style="font-family: 'Leelawadee UI'; color: #9900FF">
                        <asp:Label ID="lblPassword" runat="server" Text="Enter Password:" Font-Names="Leelawadee UI" CssClass="auto-style38"></asp:Label>
                        <asp:Label ID="lblLoginPassError" runat="server" ForeColor="#FF3300"></asp:Label>
                    </p>
        <p class="auto-style37" style="font-family: 'Leelawadee UI'; color: #9900FF">
                        <asp:TextBox ID="txtPassword" runat="server" CausesValidation="True" EnableTheming="True" TextMode="Password"  Width="250px"></asp:TextBox>
                        </p>
        <p class="auto-style37" style="font-family: 'Leelawadee UI'; color: #9900FF">
                        &nbsp;</p>
        <p class="auto-style37" style="font-family: 'Leelawadee UI'; color: #9900FF">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" BackColor="#CC0000" CssClass="auto-style31" Font-Bold="True" Font-Names="Malgun Gothic" Width="150px" ForeColor="White" OnClick="btnLogin_Click" Height="35px" />
                    </p>
        <p class="auto-style37" style="font-family: 'Leelawadee UI'; color: #9900FF">
            &nbsp;</p>
        <p class="auto-style37" style="font-family: 'Leelawadee UI'; color: #9900FF">
                        <asp:Label ID="lblSignUp" runat="server" Font-Bold="True" Text="Dont Have an Account Yet?" Font-Names="Leelawadee UI" CssClass="auto-style41"></asp:Label>
                    </p>
        <p class="auto-style37" style="font-family: 'Leelawadee UI'; color: #9900FF">
                        <asp:Button ID="btnSignUp" runat="server" Text="Sign Up!" CssClass="auto-style31" Width="100px" BackColor="Red" Font-Bold="True" ForeColor="White" OnClick="btnSignUp_Click" Height="30px" />
                    </p>
    </form>
</body>
</html>
