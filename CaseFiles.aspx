<%@ Page Title="Case Files" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CaseFiles.aspx.cs" Inherits="CaseCompetitionApp.CaseFiles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <H2 class="center gold">
        View Submissions
    </H2>
    <h3 class="center">
        Access the scoring rubric and competitor submissions
    </h3>

    <div class="col-md-12">
        <hr style="border: .25px solid rgb(0,0,0)" />
    </div>

    <div class ="col-md-12 center">
        <br />
        <a class="btn btn-default grey" target="_blank" href="https://www.dropbox.com/sh/8h7pjqsrrzyo3u8/AADfweW9pktF6cT8kFmJqJP_a?dl=0">Dropbox &raquo;</a>
    </div>

     <div class="bottomdiv">
        <br />
         <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Hub.aspx" CssClass="hyperlink" >Return to Hub</asp:HyperLink>       
    </div>

</asp:Content>
