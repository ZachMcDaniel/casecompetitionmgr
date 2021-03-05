<%@ Page Title="File Review" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FileReview.aspx.cs" Inherits="CaseCompetitionApp.FileReview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <div>
        <h2 style="font-size:65px; font-family: ZillaSlab-SemiBold">File Review</h2>
        <div>
            <hr style="border-top: 3px solid #FFCD00" />
        </div>
        <h2 style="font-size: 30px; font-family: Roboto-Regular">Access Scoring Rubrics and Competitior Submissions</h2>
          <br />
    </div>

    <div class ="col-md-12 center">
        <a class="btn btn-default wide2 gold2" target="_blank"  href="https://www.dropbox.com/sh/8h7pjqsrrzyo3u8/AADfweW9pktF6cT8kFmJqJP_a?dl=0">DROPBOX <img src="Images/arrow-BLACK.png" style="height: 20px; width:20px;" /></a>
    </div>
    <div>
        <br />
    </div>
     <div class="stickydiv">
         <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Hub.aspx" CssClass="hyperlink">Return to Hub</asp:HyperLink>
    </div>

</asp:Content>
