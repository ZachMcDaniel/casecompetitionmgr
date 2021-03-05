<%@ Page Title="Register Admin" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegisterAdmin.aspx.cs" Inherits="CaseCompetitionApp.RegisterAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <h2><%: Title %></h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h4>Create a new admin account</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <asp:Panel ID="register" runat="server" DefaultButton="btnRegister">
         <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="username" CssClass="col-md-2 control-label">User Name</asp:Label>
            <div class="col-md-4">
                <asp:TextBox runat="server" ID="username" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="username"
                    CssClass="text-danger" ErrorMessage="A team name is required." />
            </div>
             <div class="col-md-6">
             </div>
        </div>      

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="The email field is required." />
            </div>
        </div>

<%--        Comment back in if you would like admin to set temp passwords for other admin--%>

        <%--<div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="The password field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Confirm password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
            </div>
        </div>--%>

        <div class="form-group">
            <div class="col-md-offset-2 col-md-1">
                <asp:Button runat="server" ID="btnRegister" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default" />
            </div>
            <div class="col-md-9">
                <asp:Label ID="lblSubmit" runat="server" Text=""></asp:Label>
            </div>
        </div>
            </asp:Panel>
    </div>
    <div class="bottomdiv">
         <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Hub.aspx" CssClass="hyperlink" >Return to Hub</asp:HyperLink>
    </div>
</asp:Content>
