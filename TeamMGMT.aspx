<%@ Page Title="Team Management" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TeamMGMT.aspx.cs" Inherits="CaseCompetitionApp.TeamMGMT" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div>
        <h2 style="font-size:65px; font-family: ZillaSlab-SemiBold">Team Management</h2>
        <div>
            <hr style="border-top: 3px solid #FFCD00" />
        </div>
       
        <h2 style="font-size: 30px; font-family: Roboto-Regular">Add or Remove Members & Edit Information</h2>
          <br />
    </div>
    
<div class="row center"> 
    <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="Grid" runat="server" />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MemberID" DataSourceID="SqlDataSource1" Width="100%" BackColor="White" BorderColor="#ffffff" BorderStyle="None" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="None" AllowSorting="True" Height="165px">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:TemplateField HeaderText="First Name" SortExpression="FirstName">
                <EditItemTemplate>
                    <asp:TextBox ID="FName" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="FirstValidate" ValidationGroup="Grid" runat="server" ControlToValidate="FName" ErrorMessage="First Name is required"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("FirstName") %>'></asp:Label>
                </ItemTemplate>
            
                <HeaderStyle CssClass="center"  font-names="Roboto-Bold" Font-Size="11pt"  />
                <ItemStyle font-names="Roboto-Regular" Font-Size="11pt"  />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Last Name" SortExpression="LastName">
                <EditItemTemplate>
                    <asp:TextBox ID="LName" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox>
                         <asp:RequiredFieldValidator ID="LastValidate" ValidationGroup="Grid" runat="server" ControlToValidate="LName" ErrorMessage="Last Name is required"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("LastName") %>'></asp:Label>
                </ItemTemplate>
                
                <HeaderStyle CssClass="Shorter center" font-names="Roboto-Bold" Font-Size="11pt"  />
                <ItemStyle CssClass=" Shorter" font-names="Roboto-Regular" Font-Size="11pt"  />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email" SortExpression="Email">
                <EditItemTemplate>
                    <asp:TextBox ID="Email" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="EmailValidate" ValidationGroup="Grid" runat="server" ControlToValidate="Email" ErrorMessage="Email is required"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                </ItemTemplate>
                
                   <HeaderStyle CssClass="Shorter center" font-names="Roboto-Bold" Font-Size="11pt"  />
                <ItemStyle CssClass=" Shorter" font-names="Roboto-Regular" Font-Size="11pt"  />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Phone Number" SortExpression="PhoneNumber">
                <EditItemTemplate>
                    <asp:TextBox ID="Phone" TextMode="Phone" runat="server" Text='<%# Bind("PhoneNumber") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="PhoneValidate" ValidationGroup="Grid" runat="server" ControlToValidate="Phone" ErrorMessage="Phone number required"></asp:RequiredFieldValidator>             
                    </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("PhoneNumber") %>'></asp:Label>
                </ItemTemplate>
                
                   <HeaderStyle CssClass="Shorter center" font-names="Roboto-Bold" Font-Size="11pt"  />
                <ItemStyle CssClass=" Shorter" font-names="Roboto-Regular" Font-Size="11pt"  />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Shirt Size" SortExpression="ShirtSize">
                <EditItemTemplate>
                    <asp:TextBox ID="Shirt" Style="width: 50px" CssClass="center" runat="server" Text='<%# Bind("ShirtSize") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ShirtValidate" ValidationGroup="Grid" runat="server" ControlToValidate="Shirt" ErrorMessage="Shirt size is required"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("ShirtSize") %>'></asp:Label>
                </ItemTemplate>
               
                   <HeaderStyle CssClass="Shorter center" font-names="Roboto-Bold" Font-Size="11pt"  />
                <ItemStyle CssClass=" Shorter" font-names="Roboto-Regular" Font-Size="11pt"  />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Food Allergy" SortExpression="FoodAllergy">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6"  CssClass="center" style="width:60%" runat="server" Text='<%# Bind("FoodAllergy") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("FoodAllergy") %>'></asp:Label>
                </ItemTemplate>
                
                   <HeaderStyle CssClass="center" font-names="Roboto-Bold" Font-Size="11pt"  />
                <ItemStyle  font-names="Roboto-Regular" Font-Size="11pt"  />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Vegan" SortExpression="Vegan">
                <EditItemTemplate>
                    <asp:TextBox ID="txtVegan" CssClass="center" style="width:50px" runat="server" Text='<%# Bind("VeganNum") %>'></asp:TextBox>
                            <asp:RangeValidator ID="ValidateVegan" ValidationGroup="Grid" runat="server" MinimumValue="0" MaximumValue="1" ControlToValidate="txtVegan" Display="None" ErrorMessage="For Vegan, please input 1 for yes or 0 for no"></asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="VeganRequired" ValidationGroup="Grid" runat="server" ControlToValidate="txtVegan" ErrorMessage="Please let us know if you are Vegan"></asp:RequiredFieldValidator>            
                    </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Vegan") %>'></asp:Label>
                </ItemTemplate>
                 
                   <HeaderStyle CssClass="center" font-names="Roboto-Bold" Font-Size="11pt"  />
                <ItemStyle CssClass="center" font-names="Roboto-Regular" Font-Size="11pt"  />
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" ValidationGroup="Grid" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete team member?');"></asp:LinkButton>
                </ItemTemplate>
                 
                  <HeaderStyle CssClass="center" font-names="Roboto-Bold" Font-Size="11pt"  />
                <ItemStyle CssClass="center" font-names="Roboto-Regular" Font-Size="11pt"  />
            </asp:TemplateField>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="select MemberId, TeamId, FirstName, LastName, Email, FoodAllergy, ShirtSize, PhoneNumber, CASE WHEN Vegan = 1 THEN 'Yes' ELSE 'No' END AS Vegan, Vegan AS VeganNum From [Members] where TeamID = (select TeamID FROM TEAM where TeamName = (select Username FROM AspNetUsers where Id = @ID))"  UpdateCommand="UPDATE [Members] SET [FirstName] = @FirstName, [LastName] = @LastName, [Email] = @Email, [PhoneNumber] = @PhoneNumber, [ShirtSize] = @ShirtSize, [FoodAllergy] = @FoodAllergy, [Vegan] = @VeganNum WHERE [MemberID] = @original_MemberID" OldValuesParameterFormatString="original_{0}" DeleteCommand="DELETE FROM [Members] where [MemberID] = @original_MemberID">
<SelectParameters>
    <asp:Parameter Name="ID" Type="String"/>
</SelectParameters>        
        <DeleteParameters>
              <asp:Parameter Name="original_MemberID" Type="String" />
          </DeleteParameters>
         <UpdateParameters>
              <asp:Parameter Name="MemberID" Type="String" />
              <asp:Parameter Name="FirstName" Type="String" />
                   <asp:Parameter Name="LastName" Type="String" />
              <asp:Parameter Name="Email" Type="String" />
              <asp:Parameter Name="PhoneNumber" Type="String" />
              <asp:Parameter Name="ShirtSize" Type="String" />
              <asp:Parameter Name="FoodAllergy" Type="String" />
              <asp:Parameter Name="VeganNum" Type="string" />
          </UpdateParameters>
                </asp:SqlDataSource>
        </div>




    <div class="row col-md-12">
      <br />
    </div>

    <div class="row">
        <div class="col-md-3">
                <asp:Button ID="BtnNewMember" CausesValidation="false" CssClass="btn btn-default gold2" runat="server" Text="ADD MEMBERS"  OnClick="BtnAddMember_Click" />
        </div>
        <div class="col-md-9">

        </div>
        </div>

     <div class="col-md-12">
      <br />
    </div>

    <div class="col-md-12"> 
<fieldset id="NewMember"  runat="server" method="post" class="form-horizontal expandedbox" defaultfocus="txtEmail1" defaultbutton="btnSubmit">
    <div class="col-md-12">
    <br />
    </div>

    <div class="form-group col-md-12">
        <asp:Label class="control-label col-sm-3" ID="lblFirst" runat="server" Text="First Name:"></asp:Label>
        <div class="col-sm-5">
            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="rfvFirstName" ValidationGroup="new" runat="server" ErrorMessage="Require First Name" CssClass="text-danger" Text="Required" Display="Dynamic" ControlToValidate="txtFirstName">Required</asp:RequiredFieldValidator>
              </div>
    </div>

      <div class="form-group col-md-12">
        <asp:Label class="control-label col-sm-3" ID="lblLastName" runat="server" Text="Last Name:"></asp:Label>
        <div class="col-sm-5">
            <asp:TextBox ID="txtLName" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="rfvLName" ValidationGroup="new" runat="server" ErrorMessage="Require Last Name" CssClass="text-danger" Text="Required" Display="Dynamic" ControlToValidate="txtLName">Required</asp:RequiredFieldValidator>
              </div>
    </div> 
    
    <div class="form-group col-md-12">
        <asp:Label class="control-label col-sm-3" ID="lblEmail" runat="server" Text="Email:"></asp:Label>
        <div class="col-sm-5">
            <asp:TextBox ID="txtEmail" placeholder="example@example.com" Textmode="Email" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="new" runat="server" ErrorMessage="Require Email" CssClass="text-danger" Text="Required" Display="Dynamic" ControlToValidate="txtEmail">Required</asp:RequiredFieldValidator>
              </div>
    </div>  
    
    <div class="form-group col-md-12">
        <asp:Label class="control-label col-sm-3" ID="lblPhone" runat="server" Text="Phone Number:"></asp:Label>
        <div class="col-sm-5">
            <asp:TextBox ID="txtPhone" placeholder="###-###-####" TextMode="Phone" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="new" runat="server" ErrorMessage="Require Phone" CssClass="text-danger" Text="Required" Display="Dynamic" ControlToValidate="txtPhone">Required</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revPhone" runat="server"
   ErrorMessage="Please enter number as ###-###-####" ControlToValidate="txtPhone" 
   ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$">
</asp:RegularExpressionValidator>      
        </div>
    </div>  


    <div class="form-group col-md-12">
        <asp:Label class="control-label col-sm-3" ID="lblShirt" runat="server" Text="Shirt Size:"></asp:Label>
        <div class="col-sm-5">
            <asp:TextBox ID="txtShirt" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="new" runat="server" ErrorMessage="Require Shirt" CssClass="text-danger" Text="Required" Display="Dynamic" ControlToValidate="txtShirt">Required</asp:RequiredFieldValidator>
              </div>
    </div>  

  <div class="form-group col-md-12">
        <asp:Label class="control-label col-sm-3" ID="lblVegan" runat="server" Text="Vegan:"></asp:Label>
        <div class="col-sm-5">
            <asp:RadioButtonList ID="rbtnVegan" runat="server" Width="107px">
                <asp:ListItem Value="1">Yes</asp:ListItem>
                <asp:ListItem Value="0">No</asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ValidationGroup="new" ControlToValidate="rbtnVegan" CssClass="text-danger" ErrorMessage="Require Vegan Preference" Text="Required"></asp:RequiredFieldValidator>
              </div>
    </div>  

 
    <div class="form-group col-md-12">
        <asp:Label class="control-label col-sm-3" ID="lblFood" runat="server" Text="Please list any food allergies:"></asp:Label>
        <div class="col-sm-5">
            <asp:TextBox ID="txtfood" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-4">
              </div>
        </div>

     <div class="form-group col-md-12">
        <div class="col-sm-3"></div>
        <div class="col-sm-5">
        <asp:Button ID="btnSubmit" runat="server" ValidationGroup="new" Text="Submit" CssClass="btn btn-default grey"  OnClick="btnSubmit_Click" Width="125px" />
        <asp:Button ID="btnClear" runat="server" CausesValidation="false" Text="Clear" CssClass="btn btn-default grey"  OnClick="btnClear_Click" Width="125px" />
        </div>
    </div>
</fieldset>
    </div>
    <div class="col-md-12">
        <br />
        <hr />
    </div>

      <div class="stickyrightdiv">
         <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Hub.aspx" CssClass="hyperlink">Return to Hub</asp:HyperLink>
    </div>
</asp:Content>
