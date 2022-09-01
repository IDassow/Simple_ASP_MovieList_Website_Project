<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WatchList.aspx.cs" Inherits="Final_Assignment_440.WatchList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style6 {
            text-align: center;
            font-size: 65px;
            color: #CC0000;
        }
        .auto-style9 {
            text-align: center;
            height: 23px;
        }
        .auto-style10 {
            text-align: right;
            height: 23px;
        }
        .auto-style11 {
            text-align: left;
            height: 23px;
        }
        .auto-style12 {
            text-align: center;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <h1 class="auto-style6" style="font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; ">CinePrime</h1>
        </div>
        <table style="width: 100%; font-family: 'Nirmala UI Semilight'; font-weight: bold;">
            <tr>
                <td class="auto-style11">
                    <asp:Button ID="btnToSearch" runat="server" BackColor="#CC0000" BorderStyle="None" Font-Bold="True" Font-Names="Leelawadee UI" ForeColor="White" Height="30px" OnClick="btnToSearch_Click" Text="Back To Search" Width="125px" />
                </td>
                <td class="auto-style9">
                    <h2 style="font-family: 'Segoe UI'; text-decoration: underline; font-weight: bold;">Watch List:</h2>
                </td>
                <td class="auto-style10">
                    <asp:Button ID="btnLogOut" runat="server" BackColor="#CC0000" BorderStyle="None" Font-Bold="True" Font-Names="Leelawadee UI" ForeColor="White" Height="30px" OnClick="btnLogOut_Click" Text="Logout" Width="125px" />
                </td>
            </tr>
        </table>
        <br />
        <div class="auto-style12">
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Center" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="MovieId" DataSourceID="SqlDataSource1" Font-Names="Segoe UI Semilight" PageSize="5">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:ImageField DataImageUrlField="PosterImageURL" HeaderText="Image">
                    <ControlStyle Width="100px" />
                    <ItemStyle Width="100px" />
                </asp:ImageField>
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title">
                <HeaderStyle Font-Names="Malgun Gothic Semilight" Font-Overline="False" Font-Underline="True" />
                <ItemStyle Font-Names="Nirmala UI" Width="125px" />
                </asp:BoundField>
                <asp:BoundField DataField="Rating" HeaderText="Rating" SortExpression="Rating">
                <HeaderStyle Font-Names="Malgun Gothic Semilight" />
                <ItemStyle Font-Bold="True" Font-Names="Nirmala UI" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="DateAdded" DataFormatString="{0:d}" HeaderText="DateAdded" SortExpression="DateAdded">
                <HeaderStyle Font-Names="Malgun Gothic Semilight" />
                </asp:BoundField>
                <asp:CheckBoxField DataField="Seen" HeaderText="Seen" SortExpression="Seen" ValidateRequestMode="Enabled">
                <HeaderStyle Font-Names="Malgun Gothic Semilight" />
                <ItemStyle Width="50px" />
                </asp:CheckBoxField>
                <asp:HyperLinkField DataNavigateUrlFields="MovieId" DataNavigateUrlFormatString="~/MovieDetails.aspx?m={0}" Text="Show Details..." />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        </div>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT
  Movies.MovieId,
  Movies.PosterImageURL,
  Movies.Title,
  Movies.Rating,
  WatchListUsers.DateAdded,
  WatchListUsers.Seen
FROM Users
JOIN WatchListUsers
  ON Users.UserId = WatchListUsers.User_Id
JOIN Movies
  ON Movies.MovieId = WatchListUsers.Movie_Id
WHERE ([UserId] = @UserId);">
            <SelectParameters>
                <asp:SessionParameter Name="UserId" SessionField="uid" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
