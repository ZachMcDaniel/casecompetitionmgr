<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EventInformation.aspx.cs" Inherits="CaseCompetitionApp.EventInformation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="container">
    <div class="form">
  <div>
        <h2 style="font-size:65px; font-family: ZillaSlab-SemiBold">Event Details & Schedule</h2>
        <div>
            <hr style="border-top: 3px solid #FFCD00" />
        </div>
          
    </div>

    <br />

        <div class="row center">
            <div class="form-group, center">
             <asp:LoginView runat="server">     
             <RoleGroups>       
                 <asp:RoleGroup Roles="admin"> 
                    <ContentTemplate>
                    <div class="stickydiv">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="AdminEventInfo.aspx" CssClass="hyperlink" ForeColor="#999999" Font-Size="Medium">< Return to Admin</asp:Hyperlink>
                     </div>
                     </ContentTemplate>
                 </asp:RoleGroup>   
             </RoleGroups>
                </asp:LoginView>
                    <h3><asp:Label ID="LblBox1a" runat="server" ViewStateMode="Enabled"></asp:Label></h3>
                    <h5><asp:Label ID="LblBox1" runat="server" Font-Size="Medium" ViewStateMode="Enabled"></asp:Label></h5>
                </div>
                <br />
            <div class="form-group, center">
                    <h3><asp:Label ID="LblBox2a" runat="server"></asp:Label></h3>
                    <h5><asp:Label ID="LblBox2" runat="server" Font-Size="Medium"></asp:Label></h5>
                </div>
                <br />
            <div class="form-group, center">
                    <h3><asp:Label ID="LblBox3a" runat="server"></asp:Label></h3>
                    <h5><asp:Label ID="LblBox3" runat="server" Font-Size="Medium"></asp:Label></h5>
                </div>
                <br />
            <div class="form-group, center">
                <div class="row center">
                    <h5 class="center"><asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="None" BorderWidth="0px" CellPadding="3" DataKeyNames="EventID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" HorizontalAlign="Center" ShowHeaderWhenEmpty="True" Width="101%" Height="304px">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:BoundField DataField="EventID" HeaderText="Event ID" InsertVisible="False" ReadOnly="True" SortExpression="EventID" >
                            <ControlStyle CssClass="Center" />
                            <HeaderStyle CssClass="center" Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                            </asp:BoundField>
                            <asp:BoundField DataField="EventDate" DataFormatString="{0:d}" HeaderText="Date " SortExpression="EventDate" ApplyFormatInEditMode="True" >
                            <ControlStyle CssClass="center" />
                            <HeaderStyle CssClass="center" Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                            </asp:BoundField>
                            <asp:BoundField DataField="EventStartTime" HeaderText="Begins " SortExpression="EventStartTime" ApplyFormatInEditMode="True" DataFormatString="{0:hh\:mm}" HtmlEncode="False" >
                            <ControlStyle CssClass="Center" />
                            <HeaderStyle CssClass="center" Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                            </asp:BoundField>
                            <asp:BoundField DataField="EventEndTime" HeaderText="Ends " SortExpression="EventEndTime" DataFormatString="{0:hh\:mm}" HtmlEncode="False" >
                            <ControlStyle CssClass="Center" />
                            <HeaderStyle CssClass="center" Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                            </asp:BoundField>
                            <asp:BoundField DataField="EventLocation" HeaderText="Location " SortExpression="EventLocation" >
                            <ControlStyle CssClass="Center" />
                            <HeaderStyle CssClass="center" Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                            </asp:BoundField>
                            <asp:BoundField DataField="EventName" HeaderText="Event Name" SortExpression="EventName" >
                            <ControlStyle CssClass="Center" />
                            <HeaderStyle CssClass="center" Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                            </asp:BoundField>
                            <asp:BoundField DataField="EventDescription" HeaderText="Event Description " SortExpression="EventDescription" >
                            <ControlStyle CssClass="Center" />
                            <HeaderStyle CssClass="center" Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                            </asp:BoundField>
                            <asp:BoundField DataField="EventSpeaker" HeaderText="Event Speaker(s) " SortExpression="EventSpeaker" >
                            <ControlStyle CssClass="Center" />
                            <HeaderStyle CssClass="center" Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                            </asp:BoundField>
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView></h5>  
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:casecompetitionConnectionString %>" SelectCommand="SELECT * FROM [EventInfo]"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
</div>
</asp:Content>
