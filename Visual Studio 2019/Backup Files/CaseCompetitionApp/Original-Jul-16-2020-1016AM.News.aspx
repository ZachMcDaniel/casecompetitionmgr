<%@ Page Title="News" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="CaseCompetitionApp.News" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class=" center gold">
        News & Information
    </h2>
    <h3>
        This news feed will contain all information related to the CyHawk Case Competition
        including contact information, resources, ETC ...
    </h3>

    <br />

    <div class="row">
        <div class="col-md-12">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ShowHeader="False" DataSourceID="SQLNews" Width="100%" BorderWidth="1px" CellPadding="4" ForeColor="Black" Gridlines="Horizontal" EditRowStyle-BorderWidth="4px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" >
                <Columns>
                    <asp:BoundField DataField="Feed" SortExpression="Feed" >
                    <ControlStyle Font-Size="Large" />
                <ItemStyle Font-Overline="False" Font-Size="Large" />
                </asp:BoundField>
                </Columns>

<EditRowStyle BorderWidth="4px" Text="Wrap Text" rows="10"></EditRowStyle>

                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SQLNews" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [News] ORDER BY NewsTime desc"></asp:SqlDataSource>
        </div>
    </div>

</asp:Content>
