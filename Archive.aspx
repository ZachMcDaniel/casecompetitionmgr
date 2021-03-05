<%@ Page Title="Archive" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Archive.aspx.cs" Inherits="CaseCompetitionApp.Archive" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div>
        <h2 style="font-size:65px; font-family: ZillaSlab-SemiBold">Competition Archive</h2>
        <div>
            <hr style="border-top: 3px solid #FFCD00" />
        </div>
        <h2 style="font-size: 30px; font-family: Roboto-Regular">Access Previous Competitions and Results</h2>
          <br />
    </div>

     <asp:LoginView runat="server">     
         <RoleGroups>       
          <asp:RoleGroup Roles="admin">  
                <ContentTemplate>
                    <div class="row center">
                           <div class="col-md-12">
                         <a class="btn btn-default wide grey"  href="../AdminArchive">Edit Archives &raquo;</a>    
                             </div>
                     </div>
                     <hr />
                </ContentTemplate>        
         </asp:RoleGroup>   
         </RoleGroups>
     </asp:LoginView>


    <div class="row">
        <div class="col-md-12">
            <asp:GridView ID="gvCompete" runat="server" AutoGenerateColumns="False" DataSourceID="SqlCompetition" Width="100%" BackColor="White" BorderColor="#ffffff" BorderStyle="None" BorderWidth="1px" CellPadding="3" ForeColor="Black" DataKeyNames="CompetitionID" GridLines="None" Height="165px">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="CompetitionName" HeaderText="Competition Name" SortExpression="CompetitionName" >
                    <ControlStyle CssClass="padding" />
                    <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CompetitionDate" HeaderText="Competition Date" SortExpression="CompetitionDate" >
                        <ControlStyle CssClass="padding" />
                    <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                    </asp:BoundField>
                     <asp:HyperLinkField runat="server" DataNavigateUrlFields="Dropbox" DataTextField="Dropbox" target="_blank" HeaderText="Dropbox" SortExpression="Dropbox" DataNavigateUrlFormatString="http://{0}" >
                <ControlStyle CssClass="center" />
                <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
            </asp:HyperLinkField>
                    <asp:CommandField SelectText="View Details" ShowSelectButton="True" >
                        <ControlStyle CssClass="padding" />
                   <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                    </asp:CommandField>
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
            <asp:SqlDataSource ID="SqlCompetition" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT CompetitionId, CompetitionName, FORMAT([CompetitionDate], 'MM/dd/yy') AS CompetitionDate,Dropbox FROM [Competition]"></asp:SqlDataSource>
        </div>
    </div>
    <br />
     <div class="row">
        <div class="col-md-12">
            <asp:GridView ID="gvJudge" runat="server" AutoGenerateColumns="False" DataSourceID="SqlJudge" Width="100%" BackColor="White" BorderColor="#ffffff" BorderStyle="None" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="None">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="JudgeName" HeaderText="Judge Name" SortExpression="JudgeName" >
                    <ControlStyle CssClass="padding" />
                    <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Company" HeaderText="Company" SortExpression="Company" >
                        <ControlStyle CssClass="padding" />
                   <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" >
                        <ControlStyle CssClass="padding" />
                    <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                    </asp:BoundField>
                    <asp:HyperLinkField runat="server" DataNavigateUrlFields="CompanySite" DataTextField="CompanySite" target="_blank" HeaderText="Company Site" SortExpression="CompanySite" DataNavigateUrlFormatString="http://{0}" >
            <ControlStyle CssClass="padding" />
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
            <asp:SqlDataSource ID="SqlJudge" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT concat([FirstName], ' ', [LastName]) AS JudgeName, [Company], [Email], [CompanySite] FROM [Judges] WHERE ([CompetitionID] = @CompetitionID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="gvCompete" DefaultValue="1" Name="CompetitionID" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
    <br />

    <div class="row">
        <div class="col-md-7"> 
            <asp:GridView ID="gvTeam" runat="server" Width="100%" BackColor="White" BorderColor="#ffffff" BorderStyle="None" BorderWidth="1px" CellPadding="3" ForeColor="Black" AutoGenerateColumns="False" DataSourceID="SqlTeam" DataKeyNames="TeamID" GridLines="None">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="TeamName" HeaderText="Team Name" SortExpression="TeamName" >
                        <ControlStyle CssClass="padding" />
                    <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                    </asp:BoundField>
                    <asp:BoundField DataField="School" HeaderText="School" SortExpression="School" >
                        <ControlStyle CssClass="padding" />
                    <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                    </asp:BoundField>
                    <asp:CommandField SelectText="View Members" ShowSelectButton="True" >
                        <ControlStyle CssClass="padding" />
                    <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                    </asp:CommandField>
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
            <asp:SqlDataSource ID="SqlTeam" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [TEAM] WHERE ([CompetitionID] = @CompetitionID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="gvCompete" DefaultValue="1" Name="CompetitionID" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <div class="col-md-5">
            <asp:GridView ID="gvMembers" runat="server" AutoGenerateColumns="False" Width="100%" BackColor="White" BorderColor="#ffffff" BorderStyle="None" BorderWidth="1px" CellPadding="3" ForeColor="Black" DataSourceID="SQLMembers" GridLines="None">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Competitor Name" SortExpression="Name" >
                        <ControlStyle CssClass="padding" />
                    <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                    </asp:BoundField>
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
            <asp:SqlDataSource ID="SQLMembers" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT concat([FirstName], ' ', [LastName]) AS Name FROM [Members] WHERE ([TeamID] = @TeamID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="gvTeam" DefaultValue="1" Name="TeamID" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        </div>
   

</asp:Content>