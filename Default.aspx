<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CaseCompetitionApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

  

    <%--Current competition--%>
    <div>
        <h2 style="font-size:65px; font-family: ZillaSlab-SemiBold">Current Competition</h2>
        <div>
            <hr style="border-top: 3px solid #FFCD00" />
        </div>
       
        <h2 style="font-size: 30px; font-family: Roboto-Regular">The Principal Case Competition is a new case competition hosted by Tippie Tech and Principal. This event is open to all University of Iowa students interested.</h2>
          
    </div>

    <br />

    <%--Event info button--%>
    <div class ="row">
        <div class="col-md-12">
             <a class="btn btn-default gold"  href="../EventInformation" style=" font-size: 20px">EVENT DETAILS <img src="Images/whitearrow_arrow.png" style="height: 20px; width:20px;" /></a>
        </div>
    </div>
 
                     <div class ="row">
                         <br />
                         <br />
                     </div>

                       <div>
                           <br />
                       </div>
    <%--Buttons row--%>
    <div class="row">
       
        <div class=" center col-md-4">
            <%--image--%>
            <div>
                <img src="Images/group-of-3-BLACK.png" style="height: 100px; width: 100px" />
            </div>
            <h2 class="center"style="font-size:25px; font-family: Roboto-Bold">Meet The Judges</h2>
            <p class="center" style="font-size:15px; font-family: Roboto-Regular; width:100%" >
                List of This Year's Judges and Their Companies
            </p>
            <p>                
                 <a class="btn btn-default gold2"  href="../JudgeInfo" style=" font-size: 20px">VIEW JUDGES <img src="Images/arrow-BLACK.png" style="height: 20px; width:20px;" /></a>
            </p>
        </div>

        <div class="center col-md-4">
            <%--image--%>
            <div>
                <img src="Images/handshake-BLACK.png"  style="height: 100px; width: 100px"/>
            </div>
            <h2 class="center"style="font-size:25px; font-family: Roboto-Bold">Meet the Competitors</h2>
            <p class="center"style="font-size:15px; font-family: Roboto-Regular; width:100%">
                List of This Year's Teams
            </p>
            <p>                
                <a class="btn btn-default gold2"  href="../TeamInfo" style=" font-size: 20px">VIEW TEAMS <img src="Images/arrow-BLACK.png" style="height: 20px; width:20px;" /></a>            
            </p>
        </div>
        <div class="center col-md-4">
            <%--image--%>
            <div>
                <img src="Images/file-paper-clip-BLACK.png"  style="height: 100px; width: 100px"/>
            </div>
            <h2 class="center"style="font-size:25px; font-family: Roboto-Bold">Competition Archive</h2>
            <p class="center"style="font-size:15px; font-family: Roboto-Regular; width:100%">
                Access Previous Competitions and Results
            </p>
             <p>                
                <a class="btn btn-default gold2"  href="../Archive" style=" font-size: 20px">VIEW ARCHIVE <img src="Images/arrow-BLACK.png" style="height: 20px; width:20px;" /></a>            
            </p>
           
        </div> 
    </div>

                     <div class ="row">
                         <br />
                         <br />
                       
                     </div>

</asp:Content>
