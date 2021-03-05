<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="CaseCompetitionApp.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <input id="userInput" type="number" value = "0"/> 
    <p id="timerr"> 00 </p>
    <button onclick="startTime()">Start time</button>
    <button onclick="stop()">Stop time</button>

<script type='text/javascript'>

   
    function UpdateTimer() {
        // Increment the timer
        timeRemaining--;
        // Display your time
        document.getElementById('timerr').innerHTML = timeRemaining.toString().toHHMMSS();
        // Check if the timer has completed
        if (timeRemaining <= 0) {
            " Time is up! Please prepare to present!"
        }

    }
    String.prototype.toHHMMSS = function () {
        var sec_num = parseInt(this, 10); // don't forget the second param
        var hours = Math.floor(sec_num / 3600);
        var minutes = Math.floor((sec_num - (hours * 3600)) / 60);
        var seconds = sec_num - (hours * 3600) - (minutes * 60);

        if (hours < 10) { hours = "0" + hours; }
        if (minutes < 10) { minutes = "0" + minutes; }
        if (seconds < 10) { seconds = "0" + seconds; }
        var time = hours + ':' + minutes + ':' + seconds;
        return time;
    }  
    
    </script>
   
</body>
</html>
