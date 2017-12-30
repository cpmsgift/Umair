<%@ Page Language="C#" AutoEventWireup="true" CodeFile="studentHome1.aspx.cs" Inherits="studentHome1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>StudentMain</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  
    <!-- Bootstrap CSS -->
 <link rel="stylesheet" href="studentHomeStyle.css" />
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
         <div class="jumbotron" style="height:10px">
            <center><h1 style="margin-top:-25px">Student</h1> </center>
             
            
        </div>
          

        <div id="navbar">
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand -->
  <a class="navbar-brand" href="studentHome1.aspx">Home</a>

  <!-- Links -->
  <ul class="navbar-nav">
        <!-- Dropdown -->
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        FRs
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="submitFRs.aspx">Submit FRs</a>
        <a class="dropdown-item" href="viewFRs.aspx">View FRs</a>
        
      </div>
    </li>

           <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="" id="navbardrop" data-toggle="dropdown">
        Document Submission
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="submitUsecase.aspx">Use Cases</a>
        <a class="dropdown-item" href="">ERD</a>
          <a class="dropdown-item" href="">Database Schema</a>
        
      </div>
    </li>
 

         <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="" id="navbardrop" data-toggle="dropdown">
        Conduct Meeting
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="meetingRequestStudent.aspx">Meeting Request</a>
        <a class="dropdown-item" href="">Meeting Alert</a>
        
      </div>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="index.aspx">Logout</a>
    </li>




  </ul>
</nav>
            <br>
            <div class="container">
                <h2>Project Progress</h2>
                <div class="progress">
  <div class="progress-bar progress-bar-striped" style="width:10%"></div>
</div>
            </div>
            <br>

            <div class="container">
                <h2> Next Presentation </h2>
                 <ul class="list-group">
    <li class="list-group-item">30th Nov > Requirement Submission</li>
    
  </ul>
            </div>

   <div class="container">
  <h2>Next Milestone</h2>
  <ul class="list-group">
    <li class="list-group-item">Milestone 1</li>
    <li class="list-group-item">Milestone 2</li>
  </ul>
</div>

    </div>
    </form>




    <script src="js/jquery-1.11.2.min.js"</script>
    <script src="js/bootstrap.min.js" </script>

    </div>
    </form>
</body>
</html>
