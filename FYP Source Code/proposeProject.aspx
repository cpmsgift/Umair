<%@ Page Language="C#" AutoEventWireup="true" CodeFile="proposeProject.aspx.cs" Inherits="proposeProject" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Proposal Request</title>
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
    <form id="form" runat="server">
    <div>
    
         <div class="jumbotron" style="height:10px">
            <center><h1 style="margin-top:-25px">Student</h1> </center>
            
        </div>

        <div id="navbar">
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand -->
  <a class="navbar-brand" href="studentHome.aspx">Home</a>

  <!-- Links -->
  <ul class="navbar-nav">
        <!-- Dropdown -->
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        Create Project Proposal
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="selectCapstoneIdea.aspx">Select Idea</a>
        <a class="dropdown-item" href="proposeProject.aspx">Propose Idea</a>
        
      </div>
    </li>
    <li class="nav-item">

        <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        Become Group Member
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="sendRequestGroupMember.aspx">Send Request</a>
        <a class="dropdown-item" href="">Request Status</a>
        
      </div>
    </li>

       <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        Pending Request
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="">Request Status</a>
        <a class="dropdown-item" href="">Meeting Alert</a>
        
      </div>
    </li>

      <a class="nav-link" href="index.aspx">Logout</a>
    </li>
  </ul>
</nav>
</div>
    <div class="container">
        <center><h2> Propose Project </h2></center>
        <div class="col-md-6"
                    <div class="col-md-8">
                <div class="form-group">
  <label for="usr">Name:</label>
  <input type="text" class="form-control" id="usr1">
  
</div>
<div class="form-group">
  <label for="pwd">Project Name:</label>
  <input type="password" class="form-control" id="pwd">
</div>

   
    <div class="form-group">
      <label for="sel1">Select Supervisor:</label>
      <select class="form-control" id="sel1">
        <option>Supervisor1</option>
        <option>Supervisor2</option>
        <option>Supervisor3</option>
        <option>Supervisor4</option>
      </select>

    <div class="form-group">
  <label for="comment">Breifly Discuss Project:</label>
  <textarea class="form-control" rows="5" id="comment"></textarea>
</div>

        </div>
                        

        <asp:Button ID="Button1" CssClass="btn btn-default" runat="server" Text="Post & Send Request" />
            </div>
        </div>
    </div>
    </form>

    

    
  

    <script src="js/jquery-1.11.2.min.js"</script>
    <script src="js/bootstrap.min.js" </script>
</body>
</html>
