<%@ Page Title="Modify Info" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModifyCompetitionInfo.aspx.cs" Inherits="CaseCompetitionApp.ModifyCompetitionInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div>
        <h2 style="font-size:65px; font-family: ZillaSlab-SemiBold">Modify Competition Info</h2>
        <div>
            <hr style="border-top: 3px solid #FFCD00" />
        </div>
        <h2 style="font-size: 30px; font-family: Roboto-Regular">Add or Remove Information on the Competition Info Pages</h2>
          <br />
    </div>

    <%--Buttons--%>
    <div class="row">
        <div class="col-md-3 center">
            <asp:Button ID="BTNTeamInfo" runat="server" Text="Modify Team Info" OnClick="BTNClickTeamInfo" width="100%" CssClass="btn btn-default wide gold2"/>
        </div>

        <div class="col-md-3 center">
            <asp:Button ID="BTNMemberInfo" runat="server" Text="Modify Member Info" OnClick="BTNClickMemberInfo" width="100%" CssClass="btn btn-default wide gold2" />
        </div>

        <div class="col-md-3 center">
            <asp:Button ID="BTNJudgeInfo" runat="server" Text="Modify Judge Info" OnClick="BTNClickJudgeInfo" width="100%" CssClass="btn btn-default wide gold2"/>
        </div>
        <div class="col-md-3 center">
             <asp:Button ID="BTNHost" runat="server" Text="Modify Host Info" OnClick="BTNClickHostInfo" width="100%" CssClass="btn btn-default wide gold2"/>
        </div>
    </div>

    <%--Line--%>
    <br />
    <hr style="border: .25px solid rgb(0,0,0)" />

     <div id="empty" runat="server" class="center">
      <asp:Label ID="lblEmpty" Font-Size="X-Large" runat="server" Text="There is no current competition data available. Unarchive a competition to edit it."></asp:Label>
         <br />
         <br />
         <asp:Button ID="btnUnarchive" CssClass="btn btn-default" OnClick="UnarchiveLink_Click" runat="server" Text="Go to Admin Archives &raquo;" />
    </div>

    <%--Team Table--%>
        <div class="row">
            <div class="col-md-12">
                <asp:GridView ID="gvCompete" CssClass="Grid" DataKeyNames="TeamID" runat="server"  AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="100%" BackColor="White" BorderColor="#ffffff" BorderStyle="None" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="None">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:BoundField DataField="TeamID" HeaderText="TeamID" SortExpression="TeamID" ReadOnly="True" InsertVisible="False" >
                            <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                        </asp:BoundField>
                        <asp:BoundField DataField="TeamName" HeaderText="Team Name" SortExpression="TeamName" >
                            <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                        </asp:BoundField>
                        <asp:BoundField DataField="School" HeaderText="School" SortExpression="School" >
                            <HeaderStyle Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                        </asp:BoundField>
                        <%--<asp:BoundField DataField="Timeslots" HeaderText="Timeslots" SortExpression="Timeslots" ReadOnly="True">
                        </asp:BoundField>--%>
                        <asp:TemplateField HeaderText="Timeslot" SortExpression="Timeslots">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" TextMode="Time" Text='<%# Bind("Timeslots") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Timeslots") %>'></asp:Label>
                            </ItemTemplate>
                            <ControlStyle CssClass="Shorter" />
                            <HeaderStyle CssClass="padding Shorter" Font-Names="roboto-bold" Font-Size="12pt"/>
                            <ItemStyle CssClass="padding Shorter" Font-Names="roboto-regular" Font-Size="12pt" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="RoomNumber" HeaderText="Room Number" SortExpression="RoomNumber">
                            <HeaderStyle Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                            </asp:BoundField>
                        <asp:BoundField DataField="Ranking" HeaderText="Ranking" SortExpression="Ranking" >
                        <HeaderStyle Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                            </asp:BoundField>
                        <asp:TemplateField HeaderText="Edit" ShowHeader="False">
                            <EditItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" OnClientClick="return confirm('Are you sure you want to delete team?');" CommandName="Delete" Text="Delete"></asp:LinkButton>
                            </ItemTemplate>
                            <ControlStyle CssClass="smpadding" />
                            <HeaderStyle CssClass="padding" Font-Names="roboto-bold" Font-Size="12pt"/>
                            <ItemStyle CssClass="smpadding" Font-Names="roboto-regular" Font-Size="12pt"/>
                        </asp:TemplateField>
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [TeamID], [TeamName],[School], FORMAT([Timeslots], 'hh:mm tt') AS Timeslots, [RoomNumber], [Ranking], [Dropbox] FROM [TEAM] where CompetitionId IS NULL" UpdateCommand="UPDATE [TEAM] SET [Timeslots] = @Timeslots, [RoomNumber] = @RoomNumber , [Ranking] = @Ranking, [Dropbox] = @Dropbox WHERE [TeamID] = @original_TeamID" OldValuesParameterFormatString="original_{0}" DeleteCommand="DELETE FROM [TEAM] where [TeamID] = @original_TeamID">
                     <DeleteParameters>
                        <asp:Parameter Name="original_TeamID" Type="String" />
                     </DeleteParameters>
                     <UpdateParameters>
                        <asp:Parameter Name="Timeslots" Type="String" />
                        <asp:Parameter Name="RoomNumber" Type="String" />
                        <asp:Parameter Name="Ranking" Type="String" />
                         <asp:Parameter Name="Dropbox" Type="String" />
<asp:Parameter Name="original_TeamID"></asp:Parameter>
                     </UpdateParameters>
                </asp:SqlDataSource>
                <div>
                    <br />

                </div>
                <%--dropbox--%>
                <asp:GridView ID="gvdropbox" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" DataKeyNames="TeamID" Width="100%" BackColor="White" BorderColor="#ffffff" BorderStyle="None" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="None">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:BoundField DataField="TeamID" HeaderText="TeamID" SortExpression="TeamID" InsertVisible="False" ReadOnly="True">
                            <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                        </asp:BoundField>
                        <asp:BoundField DataField="TeamName" HeaderText="Team Name" SortExpression="TeamName">
                            <HeaderStyle Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Dropbox" HeaderText="Dropbox" SortExpression="Dropbox" >
                            <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                            </asp:BoundField>
                        <%-- <asp:CommandField HeaderText="Edit" ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True" >
                        <HeaderStyle CssClass="center" />
                        </asp:CommandField>--%>
                        <asp:TemplateField HeaderText="Edit" ShowHeader="False">
                            <EditItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" OnClientClick="return confirm('Are you sure you want to delete team host?');" CommandName="Delete" Text="Delete"></asp:LinkButton>
                            </ItemTemplate>
                            
                            <HeaderStyle Font-Names="roboto-bold" Font-Size="12pt"/>
                            <ItemStyle Font-Names="roboto-regular" Font-Size="11pt" />
                        </asp:TemplateField>
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
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [TeamID], [TeamName], [Dropbox] FROM [TEAM] WHERE ([CompetitionID] IS NULL)" UpdateCommand="UPDATE [TEAM] SET [Dropbox] = @Dropbox WHERE [TeamID] = @original_TeamID" OldValuesParameterFormatString="original_{0}" DeleteCommand="DELETE FROM [TEAM] where [TeamID] = @original_TeamID">
                    <DeleteParameters>
                        <asp:Parameter Name="original_TeamID" Type="String" />
                     </DeleteParameters>
                    <UpdateParameters>
                         <asp:Parameter Name="Dropbox" Type="String" />
                         <asp:Parameter Name="original_TeamID"></asp:Parameter>
                     </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>


    <%--Member Table--%>
    <div class="row">
        <div class="col-md-12">
            <asp:GridView ID="gvMember"  runat="server" AutoGenerateColumns="False"  DataKeyNames="MemberID" DataSourceID="SqlDataSource2" Width="100%" BackColor="White" BorderColor="#ffffff" BorderStyle="None" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="None">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName">
                    <ControlStyle CssClass="Shorter" />
                    <HeaderStyle CssClass="padding Shorter" Font-Names="roboto-bold" Font-Size="12pt"/>
                    <ItemStyle CssClass="padding Shorter" Font-Names="roboto-regular" Font-Size="12pt"/>
                    </asp:BoundField>
                    <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName">
                    <ControlStyle CssClass="Shorter" />
                    <HeaderStyle CssClass="padding Shorter" Font-Names="roboto-bold" Font-Size="12pt"/>
                    <ItemStyle CssClass="padding Shorter" Font-Names="roboto-regular" Font-Size="12pt" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email">
                    <ControlStyle CssClass="Shorter" />
                    <HeaderStyle CssClass="padding Shorter" Font-Names="roboto-bold" Font-Size="12pt"/>
                    <ItemStyle CssClass="padding Shorter" Font-Names="roboto-regular" Font-Size="12pt" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FoodAllergy" HeaderText="Food Allergy" SortExpression="FoodAllergy">
                    <ControlStyle CssClass="Shorter" />
                    <HeaderStyle CssClass="padding Shorter" Font-Names="roboto-bold" Font-Size="12pt" />
                    <ItemStyle CssClass="padding Shorter" Font-Names="roboto-regular" Font-Size="12pt" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ShirtSize" HeaderText="Shirt Size" SortExpression="ShirtSize">
                    <ControlStyle CssClass="Shorter" />
                    <HeaderStyle CssClass="padding Shorter" Font-Names="roboto-bold" Font-Size="12pt"/>
                    <ItemStyle CssClass="padding Shorter" Font-Names="roboto-regular" Font-Size="12pt" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number" SortExpression="PhoneNumber">
                    <ControlStyle CssClass="Shorter" />
                    <HeaderStyle CssClass="padding Shorter" Font-Names="roboto-bold" Font-Size="12pt" />
                    <ItemStyle CssClass="padding Shorter" Font-Names="roboto-regular" Font-Size="12pt" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Vegan" HeaderText="Vegan" SortExpression="Vegan">
                    <ControlStyle CssClass="Shorter" />
                    <HeaderStyle CssClass="padding Shorter" Font-Names="roboto-bold" Font-Size="12pt" />
                    <ItemStyle CssClass="padding Shorter" Font-Names="roboto-regular" Font-Size="12pt" />
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="Edit">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" OnClientClick="return confirm('Are you sure you want to delete team member?');" CommandName="Delete" Text="Delete"></asp:LinkButton>
                        </ItemTemplate>
                        <ControlStyle CssClass="smpadding" />
                        <HeaderStyle CssClass="padding" Font-Names="roboto-bold" Font-Size="12pt"/>
                        <ItemStyle CssClass="smpadding" Font-Names="roboto-regular" Font-Size="12pt"/>
                    </asp:TemplateField>
                </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#FFCD0" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Members] join TEAM on Members.TeamID = TEAM.TeamID where CompetitionId IS NULL" UpdateCommand="UPDATE [Members] SET [FirstName] = @FirstName, [LastName] =@LastName, [Email]=@Email, [FoodAllergy]=@FoodAllergy, [ShirtSize]=@ShirtSize, [PhoneNumber]=@PhoneNumber, [Vegan]=@Vegan  WHERE [MemberID] = @original_MemberID  " OldValuesParameterFormatString="original_{0}" DeleteCommand="DELETE FROM [Members] where [MemberID] = @original_MemberID">
                     
                  <DeleteParameters>
                    <asp:Parameter Name="original_MemberID" Type="String" />
                 </DeleteParameters>
                 <UpdateParameters>
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="FoodAllergy" Type="String" />
                    <asp:Parameter Name="ShirtSize" Type="String" />
                    <asp:Parameter Name="PhoneNumber" Type="String" />
                    <asp:Parameter Name="Vegan" Type="String" />
                 </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>


    <%--Judge Table--%>
    <div class="row">
        <div class="col-md-12">
            <asp:GridView ID="gvJudge" runat="server"  AutoGenerateColumns="False" DataKeyNames="JudgeID" DataSourceID="SqlDataSource3" Width="100%" BackColor="White" BorderColor="#ffffff" BorderStyle="None" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="None">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="JudgeID" HeaderText="JudgeID" SortExpression="JudgeID" InsertVisible="False" ReadOnly="True">
                        <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName">
                        <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                    </asp:BoundField>
                    <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName">
                        <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Company" HeaderText="Company" SortExpression="Company">
                        <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email">
                        <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CompanySite" HeaderText="CompanySite" SortExpression="CompanySite" >
                        <HeaderStyle Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                        </asp:BoundField>
                    <asp:BoundField DataField="Website2" HeaderText="Personal Site" SortExpression="Website2" >
                        <HeaderStyle  Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                        </asp:BoundField>
                    <asp:TemplateField HeaderText="Edit">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" OnClientClick="return confirm('Are you sure you want to delete judge?');" CommandName="Delete" Text="Delete"></asp:LinkButton>
                        </ItemTemplate>
                        <ControlStyle CssClass="smpadding" />
                        <HeaderStyle CssClass="padding" Font-Names="roboto-bold" Font-Size="12pt"/>
                        <ItemStyle CssClass="smpadding" Font-Names="roboto-regular" Font-Size="12pt" />
                    </asp:TemplateField>
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
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [JudgeID], [FirstName], [LastName], [Company], [Email], [CompanySite], [Website2] FROM [Judges] where competitionID IS NULL" UpdateCommand="UPDATE [Judges] SET [FirstName] = @FirstName, [LastName]=@LastName, [Company]=@Company, [Email]=@Email, [CompanySite]=@CompanySite, [Website2]=@Website2  WHERE [JudgeID] = @original_JudgeID  " OldValuesParameterFormatString="original_{0}" DeleteCommand="DELETE FROM [Judges] where [JudgeID] = @original_JudgeID">
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
    <%--Host Table--%>
    <div class="row">
        <div class="col-md-12">
            <asp:GridView ID="gvHost" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5" DataKeyNames="HostID" Width="100%" BackColor="White" BorderColor="#ffffff" BorderStyle="None" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="None">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="Host" HeaderText="Host" SortExpression="Host" >
                    <HeaderStyle Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                        </asp:BoundField>
                    <asp:BoundField DataField="Website" HeaderText="Website" SortExpression="Website" >
                    <HeaderStyle Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                        </asp:BoundField>
                    <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" >
                    <HeaderStyle Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                        </asp:BoundField>
                    <asp:BoundField DataField="Team" HeaderText="Team" SortExpression="Team" >
                    <HeaderStyle Font-Names="roboto-bold" Font-Size="12pt" />
                            <ItemStyle Font-Names="roboto-regular" Font-Size="12pt" />
                        </asp:BoundField>
                    <asp:CommandField HeaderText="Edit" ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True" >
                        <HeaderStyle Font-Names="roboto-bold" Font-Size="12pt" />
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
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [HostID], [Host], [Website], [Contact], [Team] FROM [Team_host] WHERE ([CompetitionID] IS NULL)" UpdateCommand="UPDATE [Team_host] SET [Host] = @Host, [Website] = @Website, [Contact] = @Contact, [Team] = @Team WHERE [HostID] = @original_HostID" OldValuesParameterFormatString="original_{0}" DeleteCommand="DELETE FROM [Team_host] where [HostID] = @original_HostID">
                <DeleteParameters>
                    <asp:Parameter Name="original_HostID" Type="String" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Host" Type="String" />
                    <asp:Parameter Name="Website" Type="String" />
                    <asp:Parameter Name="Contact" Type="String" />
                    <asp:Parameter Name="Team" Type="String" />
                    <asp:Parameter Name="original_HostID"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
     
     <%--Break--%>
    <div>
        <br />
        <br />
    </div>

    <%--Add Mentor--%>
      <div class="row">
      <%--  <div class="col-md-3">
                <asp:Button ID="BtnNewHost" CausesValidation="false" CssClass="btn btn-default grey" runat="server" Text="Add Team Host" OnClick=" BTNClickHostInfo" />
        </div>--%>
        <div class="col-md-9">

        </div>
        </div>

     <div class="col-md-12">
      <br />
    </div>

    <div class="col-md-12"> 
<fieldset id="NewHost"  runat="server" method="post" class="form-horizontal expandedbox" defaultfocus="txtEmail1" defaultbutton="btnSubmit">
    <div class="col-md-12">
    <br />
    </div>

    <div class="form-group col-md-12">
        <asp:Label class="control-label col-sm-3" ID="lblFirst" runat="server" Text="Host Name:" Font-Names="roboto-bold" Font-Size="12pt" ></asp:Label>
        <div class="col-sm-5">
            <asp:TextBox ID="txtHost" Width="50%" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="rfvHost" ValidationGroup="new" runat="server" ErrorMessage="Require Host Name" CssClass="text-danger" Text="Required" Display="Dynamic" ControlToValidate="txtHost">Required</asp:RequiredFieldValidator>
              </div>
    </div>

      <div class="form-group col-md-12">
        <asp:Label class="control-label col-sm-3" ID="lblWebsite" runat="server" Text="Website :" Font-Names="roboto-bold" Font-Size="12pt"></asp:Label>
        <div class="col-sm-5">
            <asp:TextBox ID="txtWebsite" Width="50%" runat="server"></asp:TextBox>
        </div>
    </div> 
    
    <div class="form-group col-md-12">
        <asp:Label class="control-label col-sm-3" ID="lblContact" runat="server" Text="Contact :" Font-Names="roboto-bold" Font-Size="12pt"></asp:Label>
        <div class="col-sm-5">
            <asp:TextBox ID="txtContact" placeholder="###-###-####" TextMode="Phone" Font-Names="roboto-bold" Font-Size="12pt" runat="server" Width="50%"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="new" runat="server" ErrorMessage="Require Contact" CssClass="text-danger" Text="Required" Display="Dynamic" ControlToValidate="txtContact">Required</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revContact" runat="server"
   ErrorMessage="Please enter number as ###-###-####" ControlToValidate="txtContact" 
   ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$">
</asp:RegularExpressionValidator>      
        </div>
    </div>  


    <div class="form-group col-md-12">
        <asp:Label class="control-label col-sm-3" ID="lblTeam" runat="server" Text="Team Assignment:" Font-Names="roboto-bold" Font-Size="12pt"></asp:Label>
        <div class="col-sm-5">
            <asp:TextBox ID="txtTeam" Width="50%" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="new" runat="server" ErrorMessage="Require Team" CssClass="text-danger" Text="Required" Display="Dynamic" ControlToValidate="txtTeam">Required</asp:RequiredFieldValidator>
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

    <%--Break--%>
    <div>
        <br />
        <br />
    </div>

    <div class="stickyrightdiv">
        <br />
         <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Hub.aspx" CssClass="hyperlink">Return to Hub</asp:HyperLink>
    </div>
   

</asp:Content>
