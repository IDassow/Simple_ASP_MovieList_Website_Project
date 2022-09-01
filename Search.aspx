<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Final_Assignment_440.Search" %>

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
        .auto-style8 {
            font-family: "Segoe UI";
        }
        .auto-style9 {
            text-align: center;
        }
        .auto-style10 {
            font-size: x-large;
            text-align: center;
        }
        .auto-style11 {
            text-align: right;
        }
        .auto-style12 {
            text-align: left;
        }
        .auto-style13 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <h1 class="auto-style6" style="font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; ">CinePrime</h1>
        </div>
        <table class="auto-style13">
            <tr>
                <td class="auto-style12">
                    <asp:Button ID="btnLogout" runat="server" BackColor="#CC0000" BorderStyle="None" Font-Bold="True" Font-Names="Nirmala UI Semilight" ForeColor="White" Height="30px" OnClick="btnLogout_Click" Text="Logout" Width="125px" />
                </td>
                <td class="auto-style10"><strong style="font-family: 'Leelawadee UI'; font-weight: bold">Search Movie Titles:</strong></td>
                <td class="auto-style11">
                    <asp:Button ID="btnToWatchList" runat="server" BackColor="#CC0000" BorderColor="#CC0000" BorderStyle="None" Font-Bold="True" Font-Names="Nirmala UI Semilight" ForeColor="White" Height="30px" OnClick="btnToWatchList_Click" Text="Your Watch List" Width="125px" />
                </td>
            </tr>
        </table>
        <p>
            <table align="center" style="width:100%;">
                <tr>
                    <td class="auto-style9">
            <asp:TextBox ID="txtSearch" runat="server" Width="150px"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" BackColor="Red" Font-Bold="True" Font-Names="Bahnschrift SemiLight SemiConde" ForeColor="White" OnClick="btnSearch_Click" Text="Search" Width="75px" Font-Size="Medium" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" CssClass="auto-style8" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="MovieId" DataSourceID="SqlDataSource1" HorizontalAlign="Center" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" PageSize="3">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:ImageField DataImageUrlField="PosterImageURL">
                        <ControlStyle Height="300px" />
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:ImageField>
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title">
                    <ControlStyle Width="75px" />
                    <FooterStyle Width="75px" />
                    <HeaderStyle Font-Bold="True" />
                    <ItemStyle Width="75px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Director" HeaderText="Director" SortExpression="Director">
                    <HeaderStyle Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Rating" HeaderText="Rating" SortExpression="Rating">
                    <ControlStyle Font-Bold="True" />
                    <HeaderStyle Font-Bold="True" />
                    <ItemStyle Font-Bold="True" />
                    </asp:BoundField>
                    <asp:HyperLinkField DataNavigateUrlFields="MovieId" DataNavigateUrlFormatString="~/MovieDetails.aspx?m={0}" Text="Show Details..." />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Movies] WHERE ([Title] LIKE '%' + @Title + '%') ORDER BY [Title] DESC">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtSearch" Name="Title" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
