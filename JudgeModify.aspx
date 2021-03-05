<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="JudgeModify.aspx.cs" Inherits="CaseCompetitionApp.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h2 style="font-size:65px; font-family: ZillaSlab-SemiBold">Modify Judge Info</h2>
        <div>
            <hr style="border-top: 3px solid #FFCD00" />
        </div>
        <h2 style="font-size: 30px; font-family: Roboto-Regular">Add or Remove Information About Yourself</h2>
          <br />
    </div>

  <div class="row">
        <div class="col-md-12">
            <asp:GridView ID="gvJudge" runat="server"  AutoGenerateColumns="False" DataKeyNames="JudgeID" DataSourceID="SqlDataSource3" Width="100%" GridLines="None" BorderStyle="None" BackColor="White" BorderColor="#999999" BorderWidth="1px" CellPadding="3" ForeColor="Black">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName">
                        <HeaderStyle CssClass="center" Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                    </asp:BoundField>
                    <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName">
                        <HeaderStyle CssClass="center" Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Company" HeaderText="Company" SortExpression="Company">
                        <HeaderStyle CssClass="center" Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email">
                        <HeaderStyle CssClass="center" Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CompanySite" HeaderText="Compan ySite" SortExpression="CompanySite">
                        <HeaderStyle CssClass="center" Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                        </asp:BoundField>
                    <asp:BoundField DataField="Website2" HeaderText="Personal Site" SortExpression="Website2">
                     <HeaderStyle CssClass="center" Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                        </asp:BoundField>
                    <asp:CommandField HeaderText="Edit" ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True" >
                         <HeaderStyle CssClass="center" Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                        </asp:CommandField> 
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
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [JudgeID], [FirstName], [LastName], [Company], [Email], [CompanySite], [Website2] FROM [Judges] where Username = (select Username FROM AspNetUsers where Id = @ID)" UpdateCommand="UPDATE [Judges] SET [FirstName] = @FirstName, [LastName]=@LastName, [Company]=@Company, [Email]=@Email, [CompanySite]=@CompanySite, [Website2]=@Website2  WHERE [JudgeID] = @original_JudgeID  " OldValuesParameterFormatString="original_{0}" DeleteCommand="DELETE FROM [Judges] where [JudgeID] = @original_JudgeID">
                <SelectParameters>
    <asp:Parameter Name="ID" Type="String"/>
</SelectParameters>         
                <DeleteParameters>
                    <asp:Parameter Name="original_JudgeID" Type="String" />
                 </DeleteParameters>
                 <UpdateParameters>
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Company" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="CompanySite" Type="String" />
                     <asp:Parameter Name="Website2" Type="String" />
                     <asp:Parameter Name="original_JudgeID" />
                 </UpdateParameters>
            </asp:SqlDataSource>
        </div>
      </div>
    <div>
        <br />
    </div>
     <div class="stickydiv">
         <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Hub.aspx" CssClass="hyperlink" >Return to Hub</asp:HyperLink>
    </div>
</asp:Content>