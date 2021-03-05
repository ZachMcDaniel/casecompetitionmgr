<%@ Page Title="Hub" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Hub.aspx.cs" Inherits="CaseCompetitionApp.Hub" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <div>
        <h2 style="font-size:65px; font-family: ZillaSlab-SemiBold">Competition HUB</h2>
        <div>
            <hr style="border-top: 3px solid #FFCD00" />
        </div>
        <h2 style="font-size: 30px; font-family: Roboto-Regular">Access User and Competition Resources</h2>
          <br />
    </div>

    <%--Competitor view btn info--%>
     <asp:LoginView runat="server">     
         <RoleGroups>       
          <asp:RoleGroup Roles="competitor">  
                <ContentTemplate>
                    
          <%--          <script>
                        function Time(endTime) {

                            return parseInt((endTime - (new Date().getTime())) / 1000);
                            var offset_GMT = new Date().getTimezoneOffset(); // dec utc0
                            var dec = endTime - (new Date().getTime() + offset_GMT * 60 * 1000) / 1000;//sec
                            console.log(dec);
                            return parseInt(dec);

                        }
                        Time(1604976963);

                        var _t;
                        var _h = 4;
                        var _m = 0;
                        var _s = 0;
                        var _v = formatTime("End in " + _h + ':' + _m + ':' + _s);
                        function doTime(time) {

                            var _i = Time(time);

                            _h = parseInt(_i / 3600);
                            _m = parseInt((_i - 3600 * _h) / 60);
                            _s = _i - 3600 * _h - 60 * _m;
                            var _b = _i <= 0;
                            // var _b = ((_h == 0) && (_m == 0) && (_s == 0));
                            if (_b) {
                                _v = "It's time to go!";
                                clearTimeout(_t);
                            }
                            else {
                                _v = formatTime("End in " + (_h) + ':' + (_m) + ':' + _s);
                                _t = setTimeout('doTime(' + time + ')', 1000);
                            }
                            document.all.oTime.innerHTML = _v;
                        }
                        function formatTime(_time) {
                            return _time.replace(/\b(\w)\b/g, '0$1');
                        }
                        function start_time(time) {
                            document.all.oTime.innerHTML = _v;
                            _t = setTimeout('doTime(' + time + ')', 1000);
                            document.getElementById("hide").style.display = 'none';
                        }

</script>
<span id='oTime' style="color:darkgoldenrod;font-size:20px"></span>--%>
<%--<div id="hide"; style="display:block;"> <input class ="grey" style="background-color: rgb(211,211,211); width: 74px; height: 39px; font-size: 16px" type="button" name="button2" value="Timer" onclick='start_time(new Date("2020-11-10 15:00:00").getTime())' > </div>--%>
                      
                    <div class ="row">
                         <br />
                     </div>

                    <div class="row center">
         
                         <div class="col-md-12 left">
                             <h4 style="font-family:Roboto-Bold; font-size:25px">
                                To Access Team Material and Submission Folder
                             </h4>                        
                             <p class="left" style="font-family:Roboto-Regular; font-size:15px">
                                 1.) At the start of your session refer to team registered <br /> email and follow dropbox link                                                                 
                             </p>
                             <p class="left"style="font-family:Roboto-Regular; font-size:15px">
                                 2.) This folder contains competition files, and will act as your submission folder
                             </p>
                             <p class="left"style="font-family:Roboto-Regular; font-size:15px">
                                 3.) At the end of the alloted time please drag and drop your team's presentation to the same folder
                             </p>
                         </div> 
                     </div>
                        <div class="col-md-12">
                             <hr/>
                      </div>
                </ContentTemplate>        
         </asp:RoleGroup>   
         </RoleGroups>
     </asp:LoginView>


 <div class="center">

        <%--Competitor view--%>
    <asp:LoginView runat="server">    
        <RoleGroups>       
        <asp:RoleGroup Roles="competitor">           
                <ContentTemplate>           

             <div class ="row">
                <div class="col-md-6 center">
                    <%--<asp:Button ID="BTNTeamMGMT" runat="server" Text="Team Managment"  OnClick="BTNTeamMGMT_Click" Class="btn btn-default wide grey"/>--%>
                    <a class="btn btn-default wide2 gold2"  href="../TeamMGMT">TEAM MANAGEMENT <img src="Images/arrow-BLACK.png" style="height: 20px; width:20px;" /></a>
                </div> 
                <div class ="col-md-6 center">
                    <a class="btn btn-default wide2 gold2"  href="../TeamHost">TEAM HOST<img src="Images/arrow-BLACK.png" style="height: 20px; width:20px;" /></a>
                </div>
            </div>
                </ContentTemplate>        

        </asp:RoleGroup>   
        </RoleGroups>
    </asp:LoginView>
  
  


    <%--Admin View--%>
    <asp:LoginView runat="server">     
         <RoleGroups>       
         <asp:RoleGroup Roles="admin">           
                 <ContentTemplate>
                         <div class ="row">
                         <br />
                     </div>
                    <div class="row">
                      <div class="col-md-4">
                      
                          <a class="btn btn-default wide gold2"  href="../ModifyCompetitionInfo">MODIFY COMPETITION INFO<img src="Images/arrow-BLACK.png" style="height: 20px; width:20px;" /></a>
                      </div>
                     <div class="col-md-4">
                      
                         <a class="btn btn-default wide gold2"  href="../AdminAnnounce">MODIFY ANNOUNCEMENTS <img src="Images/arrow-BLACK.png" style="height: 20px; width:20px;" /></a>
                     </div>
                     <div class="col-md-4">
                         <a class="btn btn-default wide gold2"  href="../AdminEventInfo">UPDATE EVENT INFO <img src="Images/arrow-BLACK.png" style="height: 20px; width:20px;" /></a>    
                     </div>
                 </div> 

                     <div class ="row">
                         <br />
                         <br />
                       
                     </div>
                     
                <%--second row--%>   
                <div class="row">
                    <div class="col-md-4">
                         <a class="btn btn-default wide gold2"  href="../CompetitorInfo">TEAM INFO <img src="Images/arrow-BLACK.png" style="height: 20px; width:20px;" /></a>    
                    </div>
                    <div class="col-md-4">
                         <a class="btn btn-default wide gold2"  href="../AdminArchive">ARCHIVE COMPETITION <img src="Images/arrow-BLACK.png" style="height: 20px; width:20px;" /></a>    
                    </div>
                    <div class="col-md-4">
                         <a class="btn btn-default wide gold2"  href="../Account/RegisterAdmin">REGISTER ADMIN <img src="Images/arrow-BLACK.png" style="height: 20px; width:20px;" /></a>    
                    </div>
                </div>
                        <div class="row">
                         <br />
                         <br />
                     </div>

                      <%--third row--%>
                <div class="row">
                     <div class="col-md-6 col-md-offset-3">
                       
                         <a class="btn btn-default wide gold2"  href="../FileReview">SUBMISSIONS <img src="Images/arrow-BLACK.png" style="height: 20px; width:20px;" /></a>
                     </div>
                    </div>

               <div class="row">
                         <br />
                         <br />
                       
                     </div>

                 </ContentTemplate>        
          </asp:RoleGroup>   
         </RoleGroups>
    </asp:LoginView>

    <%--Judge view--%>
    <asp:LoginView runat="server">    
        <RoleGroups>       
        <asp:RoleGroup Roles="judge">           
                 
                <ContentTemplate>   
                    <div>
                        <br />
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                        
                           <a class="btn btn-default wide2 gold2"  href="../JudgeModify">MODIFY INFORMATION <img src="Images/arrow-BLACK.png" style="height: 20px; width:20px;" /></a>
                      
                    </div>

                    <div class="col-md-6">
                        <a class="btn btn-default wide2 gold2"  href="../FileReview">FILE REVIEW <img src="Images/arrow-BLACK.png" style="height: 20px; width:20px;" /></a>
                        </div>
                    </div>

                </ContentTemplate>        

        </asp:RoleGroup>   
        </RoleGroups>
    </asp:LoginView>
      
</div>
   
</asp:Content>
