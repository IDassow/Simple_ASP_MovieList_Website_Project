<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registeration.aspx.cs" Inherits="Final_Assignment_440.Registeration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style6 {
            text-align: center;
            font-size: xx-large;
            color: #CC0000;
        }
        .auto-style7 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style8 {
            font-size: medium;
        }
        .auto-style9 {
            font-size: large;
        }
        .auto-style10 {
            text-align: center;
            font-size: medium;
        }
        .auto-style11 {
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1 class="auto-style6" style="font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-size: 75px;">CinePrime</h1>
        <dl>
            <dt class="auto-style7" style="font-family: 'Malgun Gothic'; color: #000000; font-weight: bold">Sign Up Today!</dt>
        </dl>
        <p>
        </p>
        <p>
        </p>
        <p class="auto-style10" style="font-family: 'Malgun Gothic'; color: #000000; font-weight: bold;">
                        <asp:Label ID="Label2" runat="server" Text="Enter Email:" Font-Bold="False" Font-Names="Leelawadee UI"></asp:Label>
                        <asp:Label ID="lblEmailError" runat="server" ForeColor="Red"></asp:Label>
                    </p>
        <p class="auto-style10" style="font-family: 'Malgun Gothic'; color: #000000; font-weight: bold;">
                        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="auto-style8" Width="250px"></asp:TextBox>
                    </p>
        <p class="auto-style10" style="font-family: 'Malgun Gothic'; color: #000000; font-weight: bold;">
                        <asp:Label ID="lblUsername" runat="server" Text="Enter Username:" Font-Bold="False"></asp:Label>
                        <asp:Label ID="lblUserNameError" runat="server" ForeColor="Red"></asp:Label>
                    </p>
        <p class="auto-style10" style="font-family: 'Malgun Gothic'; color: #000000; font-weight: bold;">
                        <asp:TextBox ID="txtUserName" runat="server"  Width="250px" CssClass="auto-style8"></asp:TextBox>
                    </p>
        <p class="auto-style10" style="font-family: 'Malgun Gothic'; color: #000000; font-weight: bold;">
                        <asp:Label ID="lblPassword" runat="server" Text="Enter Password:" Font-Bold="False"></asp:Label>
                        <asp:Label ID="lblPasswordError" runat="server" ForeColor="Red"></asp:Label>
                    </p>
        <p class="auto-style10" style="font-family: 'Malgun Gothic'; color: #000000; font-weight: bold;">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="250px" CssClass="auto-style8"></asp:TextBox>
                    </p>
        <p class="auto-style10" style="font-family: 'Malgun Gothic'; color: #000000; font-weight: bold;">
                        <asp:Label ID="lblPasswordConfirm" runat="server" Text="Confirm Password:" Font-Bold="False"></asp:Label>
                        <asp:Label ID="lblPasswordConfirmError" runat="server" ForeColor="Red"></asp:Label>
                    </p>
        <p class="auto-style10" style="font-family: 'Malgun Gothic'; color: #000000; font-weight: bold;">
                        <asp:TextBox ID="txtPasswordConfirm" runat="server" TextMode="Password" Width="250px" CssClass="auto-style8"></asp:TextBox>
                    </p>
        <p class="auto-style10" style="font-family: 'Malgun Gothic'; color: #000000; font-weight: bold;">
                        &nbsp;</p>
        <p class="auto-style7" style="font-family: 'Malgun Gothic'; color: #000000; font-weight: bold;">
                        <asp:Button ID="btnJoin" runat="server" Text="Join" OnClick="btnJoin_Click" Width="150px" BackColor="#CC0000" Font-Bold="True" Font-Names="Malgun Gothic" Font-Size="Medium" ForeColor="White" Height="35px" />
                    </p>
        <p class="auto-style8" style="font-family: 'Malgun Gothic'; color: #000000; font-weight: bold;">
            &nbsp;</p>
        <p class="auto-style7" style="font-family: 'Malgun Gothic'; color: #000000; font-weight: bold;">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Already Have an Account?" CssClass="auto-style9"></asp:Label>
                    </p>
        <p class="auto-style7" style="font-family: 'Malgun Gothic'; color: #000000; font-weight: bold;">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" BackColor="Red" Font-Bold="True" Font-Names="Malgun Gothic" ForeColor="White" Height="30px" Width="100px" CssClass="auto-style11" />
                    </p>
    </form>
</body>
</html>