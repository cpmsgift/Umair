<%@ Page Language="C#" AutoEventWireup="true" CodeFile="uploadDiagram.aspx.cs" Inherits="uploadDiagram" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
     <title>Upload Diagram</title>
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
        Diagram Submission
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="submitUsecase.aspx">Create Diagram</a>
        <a class="dropdown-item" href="uploadDiagram.aspx">Upload Diagram</a>
          
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
                <center><h2>Upload Diagram</h2></center>
    <asp:fileUpload id="FileUploadControl" runat="server" />
    <asp:ImageButton ID="ImageButton1" runat="server" />
    <asp:Button runat="server" id="UploadButton" text="Upload" onclick="UploadButton_Click" />
    <br /><br />
    <asp:Label runat="server" id="StatusLabel" text="Upload status: " />
    
             
             </div>
    </form>
</body>
</html>

