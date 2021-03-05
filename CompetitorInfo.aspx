<%@ Page Title="Team Info" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CompetitorInfo.aspx.cs" Inherits="CaseCompetitionApp.CompetitorInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <h2 style="font-size:65px; font-family: ZillaSlab-SemiBold">Team Information</h2>
        <div>
            <hr style="border-top: 3px solid #FFCD00" />
        </div>
        <h2 style="font-size: 30px; font-family: Roboto-Regular">View Team's Email & Dropbox</h2>
          <br />
    </div>

    <div id="empty" runat="server" class="center">
      <asp:Label ID="lblEmpty" Font-Size="X-Large" runat="server" Text="No Current Competition is running. Please check archives for any data"></asp:Label>
    </div>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlTeams" Width="100%" BackColor="White" BorderColor="#ffffff" BorderStyle="None" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="TeamName" HeaderText="Team Name" SortExpression="TeamName" >
                <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
            </asp:BoundField>
            <asp:BoundField DataField="School" HeaderText="School" SortExpression="School" >
                <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
            </asp:BoundField>
            <asp:BoundField DataField="Timeslots" HeaderText="Time Slot" SortExpression="Timeslots" DataFormatString="{0:hh:mm tt}" HtmlEncode="False">
                
                <ControlStyle CssClass="padding" />
                <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle CssClass="padding" Font-Names="roboto-regular" Font-Size="12pt" />
            </asp:BoundField>
            <asp:BoundField DataField="RoomNumber" HeaderText="Room Number" SortExpression="RoomNumber">
               <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
            </asp:BoundField>
              <asp:TemplateField HeaderText="Team Email" SortExpression="Email">

                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                       <a href="Mailto:<%# Eval("Email") %>"><%#Eval("Email")%></a>
                </ItemTemplate>

                <ControlStyle CssClass="padding" />
                <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />

            </asp:TemplateField>
              <asp:HyperLinkField runat="server" DataNavigateUrlFields="Dropbox" DataTextField="Dropbox" target="_blank" HeaderText="Dropbox" SortExpression="Dropbox" DataNavigateUrlFormatString="http://{0}" >
                
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
    <asp:SqlDataSource ID="SqlTeams" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [TeamName], [School], [Timeslots], [RoomNumber], [Email], [Dropbox] FROM [TEAM] WHERE ([CompetitionID] IS NULL)">
        
    </asp:SqlDataSource>
    <div>
            <br />
        </div>
      <div class="stickydiv">
         <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Hub.aspx" CssClass="hyperlink" >Return to Hub</asp:HyperLink>
    </div>
</asp:Content>
