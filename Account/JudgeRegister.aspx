<%@ Page Title="Register Judge" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="JudgeRegister.aspx.cs" Inherits="CaseCompetitionApp.Account.JudgeRegister" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %></h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h4>Create a new account</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <asp:Panel ID="Register" runat="server" DefaultButton="btnRegister">
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
            <asp:Label runat="server" AssociatedControlID="FName" CssClass="col-md-2 control-label">First Name</asp:Label>
            <div class="col-md-4">
                <asp:TextBox runat="server" ID="FName" CssClass="form-control" />
            </div>
             <div class="col-md-6">
             </div>
        </div>

          <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="LName" CssClass="col-md-2 control-label">Last Name</asp:Label>
            <div class="col-md-4">
                <asp:TextBox runat="server" ID="LName" CssClass="form-control" />
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

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="company" CssClass="col-md-2 control-label">Company Name</asp:Label>
            <div class="col-md-4">
                <asp:TextBox runat="server" ID="Company" CssClass="form-control" />
            </div>
             <div class="col-md-6">
             </div>
        </div>

          <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="coURL" CssClass="col-md-2 control-label">Company Site</asp:Label>
            <div class="col-md-4">
                <asp:TextBox runat="server" ID="coURL" CssClass="form-control" />
                <asp:RegularExpressionValidator 
            ID="RegularExpressionValidator1"
            runat="server" 
            ValidationExpression="^(?!http(s)?://).+"
            ControlToValidate="coURL"
            ErrorMessage="Please remove http(S):// from url"
            ></asp:RegularExpressionValidator>
            </div>
             <div class="col-md-6">
             </div>
        </div>
         <%--"http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&=]*)?"--%>

        <div class="form-group">
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
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" ID="btnRegister" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default" />
            </div>
        </div>
            </asp:Panel>
    </div>
</asp:Content>
