<%@ Page Title="Administration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CaseCompetitionApp.Maintenance.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <h1>Maintain Roles and Users in Roles</h1>
    (Only users associated with the Admin role can access this page)   
    
    <div class="row">
        <div class="col-sm-6">
            <h2>Roles</h2>
            <asp:GridView ID="grdRoles" runat="server" DataKeyNames="Id" 
                AutoGenerateColumns="false" SelectMethod="grdRoles_GetData"
                CssClass="table table-bordered table-striped table-condensed" 
                OnPreRender="GridView_PreRender">
                <Columns>
                    <asp:BoundField HeaderText="Role Name" DataField="Name" />
                    <asp:CommandField ShowSelectButton="true" />
                </Columns>
            </asp:GridView>
            <asp:DetailsView ID="dvRoles" runat="server" DataKeyNames="Id" 
                AutoGenerateRows="false" CssClass="table table-bordered table-condensed" 
                SelectMethod="dvRoles_GetItem" UpdateMethod="dvRoles_UpdateItem" 
                InsertMethod="dvRoles_InsertItem" DeleteMethod="dvRoles_DeleteItem">
                <Fields>
                    <asp:BoundField HeaderText="Role Name" DataField="Name" />
                    <asp:CommandField ShowEditButton="true" ShowInsertButton="true" 
                        ShowDeleteButton="true" />
                </Fields>
            </asp:DetailsView>
        </div>
        <div class="col-sm-6">
            <h2>Add Roles to User</h2>
            <div class="form-group">
                <label class="control-label">Select a user:</label>
                <asp:DropDownList ID="ddlUsers" runat="server" 
                    SelectMethod="grdUsers_GetData" DataValueField="Id"
                    DataTextField="UserName" CssClass="form-control">
                </asp:DropDownList> 
            </div>
            <div class="form-group">
                <label class="control-label">Add one or more roles:</label>
                <asp:ListBox ID="lstRoles" runat="server" SelectionMode="Multiple" 
                    SelectMethod="grdRoles_GetData" DataValueField="Id"
                    DataTextField="Name" CssClass="form-control"></asp:ListBox>
            </div>
            <div class="form-group">
                <asp:Button ID="btnAddRoles" runat="server" Text="Add Roles" 
                CssClass="btn btn-default" OnClick="btnAddRoles_Click" />
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-3">
                    <asp:Button ID="btnAdmin" class="btn btn-default" runat="server" Text="Show Admin" OnClick="btnClickAdmin" Width="100%" />  
                    <asp:Button ID="btnJudge" class="btn btn-default" runat="server" Text="Show Judges" OnClick="btnClick_Judges" Width="100%"/>
                    <asp:Button ID="btnCompete" class="btn btn-default" runat="server" Text="Show Competitors" OnClick="btnClick_competitor" Width="100%"/>  
        </div>
        <div class="col-md-3">
                <asp:Button ID="btnElse" class="btn btn-default" runat="server" Text="Show Users Without Roles" OnClick="btnclick_UserWO" Width="100%"/>  
                <asp:Button ID="btnAll" class="btn btn-default" runat="server" Text="Show All Users and Roles" OnClick="btnClick_ShowAll" Width="100%" />
        </div>
        <div class="col-md-6">
             <div class="col-md-12">
            <asp:GridView ID="gvAdmin" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="95%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="UserName" HeaderText="Admin" SortExpression="UserName" >
                <ControlStyle CssClass="padding" />
                <HeaderStyle CssClass="padding" />
                <ItemStyle CssClass="padding" />
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#FFDF00" Font-Bold="True" ForeColor="Black" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT AspNetUsers.UserName FROM AspNetUserRoles INNER JOIN AspNetRoles ON AspNetUserRoles.RoleId = AspNetRoles.Id INNER JOIN AspNetUsers ON AspNetUserRoles.UserId = AspNetUsers.Id WHERE (AspNetRoles.Name = 'admin')"></asp:SqlDataSource>
    </div>
        <div class="col-md-12">
            <asp:GridView ID="gvJudge" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Width="95%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="UserName" HeaderText="Judges" SortExpression="UserName" >
                        <ControlStyle CssClass="padding" />
                <HeaderStyle CssClass="padding" />
                <ItemStyle CssClass="padding" />
                </asp:BoundField>
                </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#FFDF00" Font-Bold="True" ForeColor="Black" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT AspNetUsers.UserName FROM AspNetUserRoles INNER JOIN AspNetRoles ON AspNetUserRoles.RoleId = AspNetRoles.Id INNER JOIN AspNetUsers ON AspNetUserRoles.UserId = AspNetUsers.Id WHERE (AspNetRoles.Name = 'judge')"></asp:SqlDataSource>
    </div>
        <div class="col-md-12">
            <asp:GridView ID="gvCompete" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" Width="95%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="UserName" HeaderText="Competitors" SortExpression="UserName" >
                        <ControlStyle CssClass="padding" />
                <HeaderStyle CssClass="padding" />
                <ItemStyle CssClass="padding" />
                </asp:BoundField>
                </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#FFDF00" Font-Bold="True" ForeColor="Black" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT AspNetUsers.UserName FROM AspNetUserRoles INNER JOIN AspNetRoles ON AspNetUserRoles.RoleId = AspNetRoles.Id INNER JOIN AspNetUsers ON AspNetUserRoles.UserId = AspNetUsers.Id WHERE (AspNetRoles.Name = 'competitor')"></asp:SqlDataSource>
    </div>
        <div class="col-md-12">
            <asp:GridView ID="gvWithout" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" Width="95%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" >
                <Columns>
                    <asp:BoundField DataField="UserName" HeaderText="Users Without Roles" SortExpression="UserName" >
                        <ControlStyle CssClass="padding" />
                <HeaderStyle CssClass="padding" />
                <ItemStyle CssClass="padding" />
                </asp:BoundField>
                </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#FFDF00" Font-Bold="True" ForeColor="Black" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT UserName 
FROM AspNetUsers 
WHERE Id NOT IN
(SELECT UserId
FROM AspNetUserRoles);"></asp:SqlDataSource>
    </div>
        <div class="col-md-12">
            <asp:GridView ID="gvAll" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5" Width="95%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="UserName" HeaderText="Users" SortExpression="UserName" >
                        <ControlStyle CssClass="padding" />
                <HeaderStyle CssClass="padding" />
                <ItemStyle CssClass="padding" />
                </asp:BoundField>
                    <asp:BoundField DataField="Name" HeaderText="Role" NullDisplayText="None" SortExpression="Name" >
                        <ControlStyle CssClass="padding" />
                <HeaderStyle CssClass="padding" />
                <ItemStyle CssClass="padding" />
                </asp:BoundField>
                </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#FFDF00" Font-Bold="True" ForeColor="Black" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT AspNetUsers.UserName, AspNetRoles.Name FROM AspNetUsers LEFT OUTER JOIN AspNetUserRoles ON AspNetUsers.Id = AspNetUserRoles.UserId LEFT OUTER JOIN AspNetRoles ON AspNetUserRoles.RoleId = AspNetRoles.Id"></asp:SqlDataSource>
    </div>
     </div>
    </div>

</asp:Content>

