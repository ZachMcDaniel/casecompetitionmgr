<%@ Page Title="Results" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Results.aspx.cs" Inherits="CaseCompetitionApp.Results" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 
        <h2 style="font-size:65px; font-family: ZillaSlab-SemiBold">Results</h2>
        <div>
            <hr style="border-top: 3px solid #FFCD00" />
        </div>
      
        <h2 style="font-size: 30px; font-family: Roboto-Regular">View the results for the current competition. Thank you to all competitors for the hard work at this year's competition!</h2>
          
    


                                <div>
                                    <br />
                                    <br />
                                </div>
                                
    <div class="row">

       <%--1st place--%>

        <div class="center col-md-4">
            <img src="Images/trophy-BLACK.png" style="height: 100px; width: 100px" />
        <h2 class="center"style="font-size:25pt; font-family: Roboto-Bold">1st Place</h2>
             <%--Team Name Div--%>
             <h4 class="center">
                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False"  BackColor="White" BorderColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="4"  ForeColor="Black" GridLines="None" DataSourceID="SqlDataSource4" Width="100%">
                    <Columns>
                        <asp:BoundField DataField="TeamName" HeaderText="Team Name" SortExpression="TeamName" >
                   
                        <ControlStyle CssClass="padding" />
                        <HeaderStyle CssClass="center" BackColor="White" ForeColor="White" />
                        <ItemStyle ForeColor="#FFCD00" Font-Names="roboto-bold" Font-Overline="False" Font-Size="20pt" />
                        </asp:BoundField>
                   
                    </Columns>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#FFDF00" Font-Bold="True" ForeColor="Black" /> <%--This line changes the header of the gridview--%>
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#FFDF00" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [TeamName] FROM [TEAM] WHERE ([Ranking] = 1 AND CompetitionID IS NULL )">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="1" Name="Ranking" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                 </h4>
                   
              
                        
              
        </div>

       <%--2nd plcae--%>
      
        <div class="center col-md-4">
            <img src="Images/trophy-BLACK.png" style="height: 100px; width: 100px" />
            <h2 class="center"style="font-size:25pt; font-family: Roboto-Bold">2nd Place</h2>
            <h4 class="center">
                <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False"  BackColor="White" BorderColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="4"  ForeColor="Black" GridLines="None" DataSourceID="SqlDataSource5" Width="100%">
                    <Columns>
                        <asp:BoundField DataField="TeamName" HeaderText="Team Name" SortExpression="TeamName">
                        <ControlStyle CssClass="padding" />
                        <HeaderStyle CssClass="center" BackColor="White" ForeColor="White" />
                        <ItemStyle Font-Names="roboto-bold" Font-Size="20pt" ForeColor="#FFCD00" />
                        </asp:BoundField>
                    </Columns>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#FFDF00" Font-Bold="True" ForeColor="Black" /> <%--This line changes the header of the gridview--%>
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#FFDF00" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [TeamName] FROM [TEAM] WHERE ([Ranking] = 2 AND CompetitionID IS NULL )">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="2" Name="Ranking" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </h4>
              
         
        </div>

       <%--3rd place--%>
        <div class="center col-md-4">
            <img src="Images/trophy-BLACK.png" style="height: 100px; width: 100px" />
            <h2 class="center"style="font-size:25pt; font-family: Roboto-Bold">3rd Place</h2>
            
            <h4 class="center">
                <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False"  BackColor="White" BorderColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="4"  ForeColor="Black" GridLines="None" Width="95%" DataSourceID="SqlDataSource6">
                    <Columns>
                        <asp:BoundField DataField="TeamName" HeaderText="Team Name" SortExpression="TeamName" >
                        <ControlStyle CssClass="padding" />
                        <HeaderStyle CssClass="center" BackColor="White" ForeColor="White" />
                        <ItemStyle Font-Names="roboto-bold" Font-Size="20pt" ForeColor="#FFCD00" />
                        </asp:BoundField>
                    </Columns>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#FFDF00" Font-Bold="True" ForeColor="Black" /> <%--This line changes the header of the gridview--%>
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#FFDF00" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [TeamName] FROM [TEAM] WHERE ([Ranking] = 3 AND CompetitionID IS NULL )">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="3" Name="Ranking" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </h4>
                
          
            

        </div>

    </div>

    <div class="row">
      <%-- 1st Members names div--%>
                <div class="center col-md-4">
                    <asp:GridView ID="GridView1" CssClass="center" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#ffffff" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="None" Width="60%">
                        <Columns>
                            <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" >
                                <ControlStyle CssClass="center" />
                                <HeaderStyle CssClass="center" BackColor="White" ForeColor="White" />
                                <ItemStyle CssClass="center" Font-Names="roboto-regular" Font-Size="14pt" />
                             </asp:BoundField>

                            <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" >
                                <ControlStyle CssClass="center" />
                                <HeaderStyle CssClass="center" BackColor="White" ForeColor="White" />
                                <ItemStyle CssClass="center" Font-Names="roboto-regular" Font-Size="14pt" />
                             </asp:BoundField>
                        </Columns>

                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#FFDF00" Font-Bold="True" ForeColor="Black" /> <%--This line changes the header of the gridview--%>
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#FFDF00" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>

                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [FirstName], [LastName] FROM [Members] WHERE TeamID = (select TeamID From TEAM where Ranking = 1 AND CompetitionID IS NULL );">
                    </asp:SqlDataSource>

                </div>

         <%-- 2nd members names--%>
            <div class="center col-md-4">
                <asp:GridView ID="GridView2" CssClass="center" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#FFFFFF" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="None" Width="60%">
                    <Columns>
                        <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName">
                            <ControlStyle CssClass="center" />
                            <HeaderStyle CssClass="center" BackColor="White" ForeColor="White" />
                            <ItemStyle CssClass="center" Font-Names="roboto-regular" Font-Size="14pt" />
                        </asp:BoundField>

                        <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName">
                            <ControlStyle CssClass="center" />
                            <HeaderStyle CssClass="center" BackColor="White" ForeColor="White" />
                            <ItemStyle CssClass="center" Font-Names="roboto-regular" Font-Size="14pt" />
                        </asp:BoundField>
                    </Columns>

                    <FooterStyle BackColor="#CCCC99" ForeColor="Black"></FooterStyle>
                    <HeaderStyle BackColor="#FFDF00" Font-Bold="True" ForeColor="Black"></HeaderStyle>
                    <PagerStyle HorizontalAlign="Right" BackColor="White" ForeColor="Black"></PagerStyle>
                    <SelectedRowStyle BackColor="#FFDF00" Font-Bold="True" ForeColor="White"></SelectedRowStyle>
                    <SortedAscendingCellStyle BackColor="#F7F7F7"></SortedAscendingCellStyle>
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B"></SortedAscendingHeaderStyle>
                    <SortedDescendingCellStyle BackColor="#E5E5E5"></SortedDescendingCellStyle>
                    <SortedDescendingHeaderStyle BackColor="#242121"></SortedDescendingHeaderStyle>
                </asp:GridView>

                <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT [FirstName], [LastName] FROM [Members] WHERE TeamID = (select TeamID From TEAM where Ranking = 2 AND CompetitionID IS NULL );">
                </asp:SqlDataSource>
            </div>

        <%--3rd members div--%>
        <div class="center col-md-4">
                <asp:GridView ID="GridView3" CssClass="center" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="None" Width="60%">
                    <Columns>
                        <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName">
                            <ControlStyle CssClass="center" />
                            <HeaderStyle CssClass="center" BackColor="White" ForeColor="White" />
                            <ItemStyle CssClass="center" Font-Names="roboto-regular" Font-Size="14pt" />
                        </asp:BoundField>

                        <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName">
                            <ControlStyle CssClass="center" />
                            <HeaderStyle CssClass="center" BackColor="White" ForeColor="White" />
                            <ItemStyle CssClass="center" Font-Names="roboto-regular" Font-Size="14pt" />
                        </asp:BoundField>
                    </Columns>

                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#FFDF00" Font-Bold="True" ForeColor="Black" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#FFDF00" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [FirstName], [LastName] FROM [Members] WHERE TeamID = (select TeamID From TEAM where Ranking = 3 AND CompetitionID IS NULL );">
                </asp:SqlDataSource>
        </div>

    </div>

    <div>
        <br />
    </div>


</asp:Content>
