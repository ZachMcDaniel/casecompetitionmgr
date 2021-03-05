<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminArchive.aspx.cs" Inherits="CaseCompetitionApp.AdminArchive" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h2 style="font-size:65px; font-family: ZillaSlab-SemiBold">Admin Competition Archive</h2>
        <div>
            <hr style="border-top: 3px solid #FFCD00" />
        </div>
        <h2 style="font-size: 30px; font-family: Roboto-Regular">Modify Competition Archives & Results</h2>
          <br />
    </div>
    <div class="row center">
            <div class="col-md-6">
                <asp:Button ID="btnShowArchives" CausesValidation="false" OnClick="btnShowArchives_Click" class="btn btn-default wide gold2" runat="server" Text="ARCHIVE/UNARCHIVE COMPETITIONS" />
            </div>
             <div class="col-md-6">
                <asp:Button ID="btnEditArchives" CausesValidation="false" OnClick="btnEditArchives_Click" class="btn btn-default wide gold2" runat="server" Text="EDIT ARCHIVED COMPETITIONS" />
            </div>
    </div>
    <br />

    <div id="archives" runat="server">
        <asp:UpdatePanel runat="server" ID="ArchiveUpdates" UpdateMode="Conditional">
            <ContentTemplate>
    <div class="row">
        <div>
             <div class="col-md-2" style="text-align:right;vertical-align:central">
             <asp:Label ID="lblArchive" style="text-align:right; font-weight:bold; vertical-align:central" runat="server"  CssClass="control-label" Text="Name of Competition: "></asp:Label>
                 </div>
            <div class="col-md-3">
             <asp:TextBox ID="txtCompetition" runat="server" class="ArchBox"></asp:TextBox>
            <br />
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCompetition" ErrorMessage="RequiredFieldValidator">Competition Name Required</asp:RequiredFieldValidator>
        </div>
        </div>
       <div>
           <div class="col-md-2" style="text-align:right;vertical-align:central">
              <asp:Label ID="lblDate" style="text-align:right; font-weight:bold; vertical-align:central" runat="server" CssClass="control-label" Text="Date of Competition: "></asp:Label>
               </div>
           <div class="col-md-3">
              <asp:TextBox ID="txtDate" textmode="Date" runat="server" class="ArchBox"></asp:TextBox>
            <br />

              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDate" ErrorMessage="RequiredFieldValidator">Competition Date Required</asp:RequiredFieldValidator>
        </div>
       </div>
          <div class="col-md-2">
            <asp:Button ID="BtnArchive" CssClass="btn btn-default" Style="padding-bottom:0px; padding-top:0px; margin-top:0px;text-align:center" runat="server" OnClientClick="return confirm('Are you sure you want to archive the current competition?')" Text="Archive Competition" Height="26px" OnClick="Btn_Archive" />
              <asp:Label ID="lblEmpty" runat="server" CssClass="text-danger" Text=""></asp:Label>
    <asp:AsyncPostBackTrigger ControlID="BtnArchive" EventName="Btn_Archive"/>
          </div>
    </div>
       <hr />

     <div class="row">
        <div class="col-md-12">
            <asp:GridView ID="gvCompete" runat="server" AutoGenerateColumns="False" DataSourceID="SqlCompetition" Width="100%" BackColor="White" BorderColor="#ffffff" BorderStyle="None" BorderWidth="1px" CellPadding="3" ForeColor="Black" DataKeyNames="CompetitionId" GridLines="None">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="CompetitionName" HeaderText="Competition Name" SortExpression="CompetitionName" ReadOnly="True" >
                    <ControlStyle CssClass="padding" />
                    <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CompetitionDate" HeaderText="Competition Date" SortExpression="CompetitionDate" ReadOnly="True" >
                        <ControlStyle CssClass="padding" />
                    <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                    </asp:BoundField>
                    
                    
                    <asp:CommandField EditText="Unarchive" ShowEditButton="True" CausesValidation="false" UpdateText="Confirm" >
                    
                    
                        <ControlStyle CssClass="smpadding" />
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
            <asp:SqlDataSource ID="SqlCompetition"  runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT CompetitionId, CompetitionName, FORMAT([CompetitionDate], 'MM/dd/yy') AS CompetitionDate FROM [Competition]" UpdateCommand="UpdateCompetition"  OldValuesParameterFormatString="original_{0}" UpdateCommandType="StoredProcedure">
                <UpdateParameters>
                    <asp:Parameter Name="original_CompetitionID" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
    <br />
</ContentTemplate>
        </asp:UpdatePanel>
</div>
    


<div id="editarchive" runat="server">
     

   <div id="empty" runat="server" class="center">
      <asp:Label ID="Label1" Font-Size="X-Large" runat="server" Text="There is no data archived"></asp:Label>
         <br />
         <br />
    </div>

    
    <div class="row">
        <div class="col-md-12">
           <%--<asp:RequiredFieldValidator ID="rfvDate" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtDate" CssClass="text-danger">Date Required</asp:RequiredFieldValidator>--%>
            <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="100%" BackColor="White" BorderColor="#ffffff" BorderStyle="None" BorderWidth="1px" CellPadding="3" ForeColor="Black" DataKeyNames="CompetitionID" GridLines="None">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="CompetitionId" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="CompetitionId" >
                   <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CompetitionName" HeaderText="Competition Name" SortExpression="CompetitionName" >
                    <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="Competition Date" SortExpression="CompetitionDate">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtDate" TextMode="Date" runat="server" Text='<%# Bind("CompetitionDate") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblDate" runat="server" Text='<%# Bind("CompetitionDate") %>'></asp:Label>
                        </ItemTemplate>
                       <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="Dropbox" HeaderText="Dropbox" SortExpression="Dropbox" >
                    <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                    </asp:BoundField>
                    <asp:CommandField SelectText="View Details" ShowSelectButton="True" ShowEditButton="True" >
                        <ControlStyle CssClass="smpadding" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT CompetitionId, CompetitionName, FORMAT([CompetitionDate], 'MM/dd/yy') AS CompetitionDate, Dropbox FROM [Competition]" UpdateCommand="UPDATE [Competition] SET [CompetitionName] = @CompetitionName, [CompetitionDate]=@CompetitionDate, [Dropbox]=@Dropbox WHERE [CompetitionID] = @original_CompetitionID" OldValuesParameterFormatString="original_{0}">
                 <DeleteParameters>
                    <asp:Parameter Name="original_CompetitionID" Type="String" />
                 </DeleteParameters>
                 <UpdateParameters>
                    <asp:Parameter Name="CompetitionID" Type="String" />
                    <asp:Parameter Name="CompetitionName" Type="String" />
                    <asp:Parameter Name="CompetitionDate" Type="String" />
                     <asp:Parameter Name="Dropbox" Type="String" />
                 </UpdateParameters></asp:SqlDataSource>
        </div>
    </div>
    <br />
     <div class="row">
        <div class="col-md-12">
            <asp:GridView ID="gvJudge" runat="server" CssClass="Grid" AutoGenerateColumns="False" DataSourceID="SqlJudge" Width="100%" BackColor="White" BorderColor="#ffffff" BorderStyle="None" BorderWidth="1px" CellPadding="3" ForeColor="Black" DataKeyNames="JudgeID" GridLines="None">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" >
                    <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                    </asp:BoundField>
                    <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" >
                  <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Company" HeaderText="Company" SortExpression="Company" >
                   <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CompanySite" HeaderText="Site" SortExpression="CompanySite" >
                    <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                        </asp:BoundField>
                    <asp:TemplateField HeaderText="ID" SortExpression="CompetitionID">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CompetitionID") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("CompetitionID") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                    </asp:TemplateField>
                    <asp:CommandField ShowEditButton="True" >
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
            <asp:SqlDataSource ID="SqlJudge" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Judges] WHERE ([CompetitionID] = @CompetitionID)" UpdateCommand="UPDATE [Judges] SET [FirstName] = @FirstName, [LastName]=@LastName, [Company]=@Company,[CompanySite]=@CompanySite  WHERE [JudgeID] = @original_JudgeID" OldValuesParameterFormatString="original_{0}" DeleteCommand="DELETE FROM [Judges] where [JudgeID] = @original_JudgeID">
                 <DeleteParameters>
                    <asp:Parameter Name="original_JudgeID" Type="String" />
                 </DeleteParameters>
                 <UpdateParameters>
                    <asp:Parameter Name="JudgeID" Type="String" />
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Company" Type="String" />
                    <asp:Parameter Name="CompanySite" Type="String" />
                 </UpdateParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="CompetitionID" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
    <br />
    <div class="row">
        <div class="col-md-12"> 
            <asp:GridView ID="gvTeam" runat="server" CssClass="Grid" Width="100%" BackColor="White" BorderColor="#ffffff" BorderStyle="None" BorderWidth="1px" CellPadding="3" ForeColor="Black" AutoGenerateColumns="False" DataSourceID="SqlTeam" DataKeyNames="TeamID" GridLines="None">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="TeamName" HeaderText="Name" SortExpression="TeamName" ReadOnly="True" >
                    <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                    </asp:BoundField>
                    <asp:BoundField DataField="School" HeaderText="School" SortExpression="School" >
                    <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                        </asp:BoundField>
                    <asp:BoundField DataField="Ranking" HeaderText="Rank" SortExpression="Ranking" >
                    <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                        </asp:BoundField>
                    <asp:BoundField DataField="CompetitionID" HeaderText="ID" SortExpression="CompetitionID" >
                    <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                        </asp:BoundField>
                    <asp:CommandField ShowEditButton="True" ShowSelectButton="True" >
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
            <asp:SqlDataSource ID="SqlTeam" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [TEAM] WHERE ([CompetitionID] = @CompetitionID) order by -ranking desc" UpdateCommand="UPDATE [TEAM] SET [School] = @School, [CompetitionId] = @CompetitionID , [Ranking] = @Ranking WHERE [TeamID] = @original_TeamID" OldValuesParameterFormatString="original_{0}" DeleteCommand="DELETE FROM [TEAM] where [TeamID] = @original_TeamID">
                     <DeleteParameters>
                        <asp:Parameter Name="original_TeamID" Type="String" />
                     </DeleteParameters>
                     <UpdateParameters>
                        <asp:Parameter Name="Ranking" Type="String" />
                        <asp:Parameter Name="CompetitionID" Type="String" />
                        <asp:Parameter Name="RoomNumber" Type="String" />
                     </UpdateParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="CompetitionID" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        </div>
    <br />
    <div class="row">
        <div class="col-md-6">
            <asp:GridView ID="gvMembers" runat="server" CssClass="Grid" AutoGenerateColumns="False" Width="100%" DataKeyNames="MemberID" BackColor="White" BorderColor="#ffffff" BorderStyle="None" BorderWidth="1px" CellPadding="3" ForeColor="Black" DataSourceID="SQLMembers" GridLines="None">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" >
                    <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                    </asp:BoundField>
                    <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" >
                    <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                        </asp:BoundField>
                    <asp:CommandField ShowEditButton="True" >
                        <ControlStyle CssClass="smpadding" />
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
            <asp:SqlDataSource ID="SQLMembers" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Members] WHERE ([TeamID] = @TeamID)" UpdateCommand="UPDATE [Members] SET [FirstName] = @FirstName, [LastName] =@LastName WHERE [MemberID] = @original_MemberID  " OldValuesParameterFormatString="original_{0}" DeleteCommand="DELETE FROM [Members] where [MemberID] = @original_MemberID">
                     
                  <DeleteParameters>
                    <asp:Parameter Name="original_MemberID" Type="String" />
                 </DeleteParameters>
                 <UpdateParameters>
                    <asp:Parameter Name="MemberID" Type="String" />
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                 </UpdateParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="gvTeam" Name="TeamID" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        </div>

</div>



      <div class="stickydiv">
         <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Hub.aspx" CssClass="hyperlink" >Return to Hub</asp:HyperLink>
    </div>

</asp:Content>
