<%@ Page Title="Team Information" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TeamInfo.aspx.cs" Inherits="CaseCompetitionApp.TeamInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h2 style="font-size:65px; font-family: ZillaSlab-SemiBold">Team Information</h2>
        <div>
            <hr style="border-top: 3px solid #FFCD00" />
        </div>
        <h2 style="font-size: 30px; font-family: Roboto-Regular">View Team Information for the Current Case Competition</h2>
          <br />
    </div>

    <div id="empty" runat="server" class="center">
      <asp:Label ID="lblEmpty" Font-Size="X-Large" runat="server" Text="No Current Competition is available at this time. Please check back later."></asp:Label>
    </div>

    <div class="row" >
    <div class="col-md-7">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="100%" BackColor="White" BorderColor="#ffffff" BorderStyle="None" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="None" DataKeyNames="TeamID" Height="365px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="TeamName" HeaderText="Team Name" SortExpression="TeamName" >
                    <ControlStyle CssClass="center" />
                 <HeaderStyle CssClass="center" Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle CssClass="center" Font-Names="roboto-regular" Font-Size="12pt" />
                        
                </asp:BoundField>
                <asp:BoundField DataField="Timeslots" HeaderText="Time Slot" SortExpression="Timeslots" >
                 <ControlStyle CssClass="center" />
                <HeaderStyle CssClass="center" Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle CssClass="center" Font-Names="roboto-regular" Font-Size="12pt" />
                    </asp:BoundField>
                <asp:BoundField DataField="RoomNumber" HeaderText="Room Number" SortExpression="RoomNumber" >
                    <ControlStyle CssClass="center" />
                <HeaderStyle CssClass="center" Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle CssClass="center" Font-Names="roboto-regular" Font-Size="12pt" />
                    </asp:BoundField>
                <asp:CommandField HeaderText="View Members" SelectText="View Members" ShowSelectButton="True" >
                            <ControlStyle CssClass="center" />
                             <HeaderStyle CssClass="center" Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle CssClass="center" Font-Names="roboto-regular" Font-Size="12pt" />
                    </asp:CommandField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#FFCD00" Font-Bold="True" ForeColor="Black" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT TeamID, TeamName, FORMAT([Timeslots], 'hh:mm tt') AS Timeslots, RoomNumber FROM [TEAM] WHERE CompetitionID IS NULL ORDER BY Timeslots"></asp:SqlDataSource>
    </div>
    <div class="col-md-5">
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="MemberID" DataSourceID="SqlDataSource2" Width="95%" BackColor="White" BorderColor="#ffffff" BorderStyle="None" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="None" Height="145px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" >
                    <ControlStyle CssClass="center" />
                <HeaderStyle CssClass="center" Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle CssClass="center" Font-Names="roboto-regular" Font-Size="12pt" />
                </asp:BoundField>
                <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" >
                    <ControlStyle CssClass="center" />
                <HeaderStyle CssClass="center" Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle CssClass="center" Font-Names="roboto-regular" Font-Size="12pt" />
                </asp:BoundField>

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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Members] WHERE ([TeamID] = @TeamID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="TeamID" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</div>
  
</asp:Content>
