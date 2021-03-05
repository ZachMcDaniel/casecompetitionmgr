<%@ Page Title="Meet the Judges" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="JudgeInfo.aspx.cs" Inherits="CaseCompetitionApp.JudgeInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h2 style="font-size:65px; font-family: ZillaSlab-SemiBold">Meet the Judges!</h2>
        <div>
            <hr style="border-top: 3px solid #FFCD00" />
        </div>
        <h2 style="font-size: 30px; font-family: Roboto-Regular">This year's judges can be found below, along with the company they work for. Make sure to check this out!</h2>
          <br />
    </div>
    <div id="empty" runat="server" class="center">
      <asp:Label ID="lblEmpty" Font-Size="X-Large" runat="server" Text="There is no current judges information available at this time. Please check back later."></asp:Label>
    </div>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourcejudge" Width="100%" BackColor="White" BorderColor="#ffffff" BorderStyle="None" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="None" DataKeyNames="JudgeID" Height="170px">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="JudgeName" HeaderText="JudgeName" SortExpression="JudgeName" ReadOnly="True" >
                  <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
            </asp:BoundField>
            <asp:BoundField DataField="Company" HeaderText="Company" SortExpression="Company">
                 <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
            </asp:BoundField>
            <asp:HyperLinkField runat="server" DataNavigateUrlFields="CompanySite" DataTextField="CompanySite" target="_blank" HeaderText="Company Site" SortExpression="CompanySite" DataNavigateUrlFormatString="http://{0}" >
                <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
            </asp:HyperLinkField>
            <asp:HyperLinkField runat="server" DataNavigateUrlFields="Website2" DataTextField="Website2" target="_blank" HeaderText="Personal Site" SortExpression="Website2" DataNavigateUrlFormatString="http://{0}" >
                 <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
            </asp:HyperLinkField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCD00" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>


    <asp:SqlDataSource ID="SqlDataSourcejudge" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [JudgeID], concat([FirstName], ' ', [LastName]) AS JudgeName, [Company], [CompanySite], [Website2] FROM [Judges] WHERE CompetitionID IS NULL" ></asp:SqlDataSource>


</asp:Content>
