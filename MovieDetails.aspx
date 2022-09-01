<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MovieDetails.aspx.cs" Inherits="Final_Assignment_440.MovieDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-family: "Segoe UI";
        }
        .auto-style6 {
            text-align: center;
            font-size: 65px;
            color: #CC0000;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            font-size: x-large;
            height: 36px;
        }
        .auto-style9 {
            text-align: right;
            height: 36px;
        }
        .auto-style10 {
            text-align: left;
            height: 36px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <h1 class="auto-style6" style="font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; ">CinePrime</h1>
        </div>
        <p class="auto-style7" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-weight: bolder; font-style: normal; text-decoration: underline;">
            <table style="width:100%;">
                <tr>
                    <td class="auto-style10">
                        <asp:Button ID="btnBackToSearch" runat="server" BackColor="#CC0000" BorderStyle="None" Font-Bold="True" Font-Names="Leelawadee UI" ForeColor="White" Height="30px" OnClick="btnBackToSearch_Click" Text="Back To Search" Width="125px" />
                    </td>
                    <td class="auto-style8" style="font-family: 'Leelawadee UI'; font-weight: bold">Movie Details:</td>
                    <td class="auto-style9">
                        <asp:Button ID="btnGoToWL" runat="server" BackColor="#CC0000" BorderStyle="None" Font-Bold="True" Font-Names="Leelawadee UI" ForeColor="White" Height="30px" OnClick="btnGoToWL_Click" Text="Your Watch List" Width="125px" />
                    </td>
                </tr>
            </table>
        </p>
            <asp:DetailsView ID="DetailsView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style1" ForeColor="Black" GridLines="Horizontal" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="MovieId" DataSourceID="SqlDataSource1" HorizontalAlign="Center">
                <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:ImageField DataImageUrlField="PosterImageURL" HeaderText="Poster">
                        <ControlStyle Height="300px" />
                        <HeaderStyle Font-Bold="True" />
                    </asp:ImageField>
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title">
                    <HeaderStyle Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Director" HeaderText="Director" SortExpression="Director">
                    <HeaderStyle Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description">
                    <ControlStyle Font-Size="Smaller" Width="200px" />
                    <FooterStyle Width="200px" />
                    <HeaderStyle Font-Bold="True" />
                    <ItemStyle Font-Size="Smaller" Width="200px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Rating" HeaderText="Rating" SortExpression="Rating">
                    <HeaderStyle Font-Bold="True" />
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="Promo Trailer">
                        <ItemTemplate>
                            <iframe id="I1" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen="" frameborder="0" height="315" name="I1" src= "<%#Eval("VideoTrailerURL") %>" title="YouTube video player" width="560"></iframe>
                        </ItemTemplate>
                        <HeaderStyle Font-Bold="True" />
                    </asp:TemplateField>
                </Fields>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            </asp:DetailsView>
        <p class="auto-style7">
            <asp:Button ID="btnAddToWL" runat="server" OnClick="btnAddToWL_Click" Text="Add To Watch List!" Width="200px" BackColor="Red" Font-Bold="True" Font-Names="Leelawadee UI" ForeColor="White" Height="35px" />
        </p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Movies] WHERE ([MovieId] = @MovieId) ORDER BY [Director] DESC">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="1" Name="MovieId" QueryStringField="m" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
