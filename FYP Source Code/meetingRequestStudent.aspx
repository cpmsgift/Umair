<%@ Page Language="C#" AutoEventWireup="true" CodeFile="meetingRequestStudent.aspx.cs" Inherits="meetingRequestStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Meeting Request</title>
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
                <center><h2>Meeting Request</h2></center>


                 <div class="col-md-4"
                    <div class="col-md-6">
                <div class="form-group">
  <label for="usr">Name:</label>
  <input type="text" class="form-control" id="usr1">
  
</div>


   
   

    <div class="form-group">
  <label for="comment">What to Discuss?:</label>
  <textarea class="form-control" rows="5" id="comment"></textarea>
</div>

       
                        

        <asp:Button ID="Button1" CssClass="btn btn-default" runat="server" Text="Send Request" />
            </div>
        </div>
        </div>

    </div>
    </form>
        <script src="js/jquery-1.11.2.min.js"</script>
    <script src="js/bootstrap.min.js" </script>
</body>
</html>
