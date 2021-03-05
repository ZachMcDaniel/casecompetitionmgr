<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Testtimer.aspx.cs" Inherits="CaseCompetitionApp.Testtimer" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>



<!-- An area to display your elapsed time -->
<span id='timer'></span>
<!-- Scripts to store your progress -->
<script type='text/javascript'>
    var timeRemaining = 10800;

    function StartTimer() {
        // Start an interval that repeats each second and increments the timer
        setInterval(UpdateTimer, 1000);
    }

    function UpdateTimer() {
        // Increment the timer
        timeRemaining--;
        // Display your time
        document.getElementById('timer').innerHTML = timeRemaining.toString().toHHMMSS();
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
