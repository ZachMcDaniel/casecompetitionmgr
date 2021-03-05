<%@ Page Title="Results" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Results.aspx.cs" Inherits="CaseCompetitionApp.Results" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
       
        <div class="center col-md-4">
            <h2 class="center">1st Place</h2>
            <h4 class="center">
                Sons of Analysts
            </h4>
            <p class="center">                
                <img src="Images/first.jpeg" /> <%--Change the image for teams here--%>
            </p>
<<<<<<< HEAD
            <p class="center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="Horizontal" Width="200px">
=======
            <div class="div_text_center">
                <asp:GridView ID="GridView1" HorizontalAlign="Center" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="Horizontal" Width="200px">
>>>>>>> c22a22f6b18d2ae0a841dc6a3ad9b69dca231472
                    
                    <Columns>
                        <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" >
                            <ControlStyle CssClass="center" />
                            <HeaderStyle CssClass="center" />
                            <ItemStyle CssClass="center" />
                         </asp:BoundField>

                        <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" >
                            <ControlStyle CssClass="center" />
                            <HeaderStyle CssClass="center" />
                            <ItemStyle CssClass="center" />
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

                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [FirstName], [LastName] FROM [Members] WHERE ([TeamID] = @TeamID)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="28" Name="TeamID" Type="Int32" /> <%--change default value to change team names--%>
                    </SelectParameters>
                </asp:SqlDataSource>
               
            </p>
        </div>

        <div class="center col-md-4">
            <h2 class="center">2nd Place</h2>
            <h4 class="center">
                AKA Consulting
            </h4>
            <p class="center">                
                <img src="Images/second.jpeg" />  <%--Change the image for teams here--%>  
            </p>
            <div class="div_text_center">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="200px">
                    <Columns>
                        <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName">
                            <ControlStyle CssClass="center" />
                            <HeaderStyle CssClass="center" />
                            <ItemStyle CssClass="center" />
                        </asp:BoundField>

                        <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName">
                            <ControlStyle CssClass="center" />
                            <HeaderStyle CssClass="center" />
                            <ItemStyle CssClass="center" />
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

                <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT [FirstName], [LastName] FROM [Members] WHERE ([TeamID] = @TeamID)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="29" Name="TeamID" Type="Int32"></asp:Parameter> <%--change default value to change team names--%>
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>

        <div class="center col-md-4">
            <h2 class="center">3rd Place</h2>
            <h4 class="center">
                The Zip Codes
            </h4>
            <p class="center">                
                <img src="Images/third.jpeg" />  <%--Change the image for teams here--%>
            </p>
            <div class="div_text_center">
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Horizontal" Width="200px">
                    <Columns>
                        <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName">
                            <ControlStyle CssClass="center" />
                            <HeaderStyle CssClass="center" />
                            <ItemStyle CssClass="center" />
                        </asp:BoundField> 

                        <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName">
                            <ControlStyle CssClass="center" />
                            <HeaderStyle CssClass="center" />
                            <ItemStyle CssClass="center" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [FirstName], [LastName] FROM [Members] WHERE ([TeamID] = @TeamID)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="22" Name="TeamID" Type="Int32" /> <%--change default value to change team names--%>
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
           
        </div>
    </div>

    <div class="center">
        <h3>
            Thank you to all competitors for the hard work at this year's competition!
        </h3>
    </div>
</asp:Content>
