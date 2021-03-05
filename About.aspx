<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="CaseCompetitionApp.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <h2 style="font-size:65px; font-family: ZillaSlab-SemiBold">The Case Competition Manager Story</h2>
        <div>
            <hr style="border-top: 3px solid #FFCD00" />
        </div>
          <br />
    </div>
    <div>
        <h4 style="font-family: Roboto-Regular; font-size: 18pt">
            The Case Competition Manager app was created by students as a summer internship provided by Tippie College of Business. Tippie Tech, a business student organization, and the college collaborated to create meaningful experiences for students whose internship opportunities were lost due to COVID-19.
            The app continued development and recieved new features from a business capstone class. The students who helped make this app possible are listed below!
        </h4>
         <div>
        <br />
    </div>
        <%--Creators--%>
        <div>
         
                <h4 class="center" style="text-decoration-line:underline ; font-family: Roboto-Bold; font-size: 18pt">
                    Creators
                </h4>
                <h5 class="center"  style="font-family: Roboto-Regular; font-size: 14pt">
                    Isaac Perrilles​ - Information Systems, B.B.A 2020​
                </h5>
           
                <h5 class="center"  style="font-family: Roboto-Regular; font-size: 14pt">
                    Tyler Jackson - Business Analytics, B.B.A 2021
                </h5>
             <h5 class="center"  style="font-family: Roboto-Regular; font-size: 14pt">
                    Yanni Mihalopoulos - Business Analytics, B.B.A 2021
                </h5>

             <h5 class="center" style="font-family: Roboto-Regular; font-size: 14pt">
                    Zachary McDaniel - Business Analytics, B.B.A 2021
                </h5>
         
        <br />

        <%--Contributors--%>
    
                <h4 class="center" style="text-decoration-line: underline ; font-family: Roboto-Bold; font-size: 18pt">
                    Contributors
                </h4>
             <h5 class="center" style="font-family: Roboto-Regular; font-size: 14pt">
                    Cheyao Guo - Information Systems, B.B.A 2020
                </h5>
                <h5 class="center" style="font-family: Roboto-Regular; font-size: 14pt">
                    Emily Bacatan - Information Systems, B.B.A 2020
                </h5>
               

            <br />

            <h4 class="center" style="text-decoration-line: underline ; font-family: Roboto-Bold; font-size: 18pt"> 
                Faculty Supervisors
            </h4>
            <h5 class="center" style="font-family: Roboto-Regular; font-size: 14pt">
                    Kristy Walker - Lecturer of Business Analytics
                </h5>
            <h5 class="center" style="font-family: Roboto-Regular; font-size: 14pt">
                    Micheal Colbert - Associate Professor of Practice & Director of Undergraduate Studies in Business Analytics
                </h5>
         
        </div>
</div>
    <div>
        <br />
    </div>
      <%--Jumbotron--%>

<div class="jumbotron center">
        
        <asp:Image ID="Image1" runat="server" />
  </div>
     <p class="center" style="font-family: Roboto-Regular; font-size: 11pt">
        Yanni Mihalopoulos (left), Isaac Perrilles (center), Zach McDaniel (right)
    </p>
</asp:Content>
