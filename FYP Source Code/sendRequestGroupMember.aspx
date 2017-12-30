<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sendRequestGroupMember.aspx.cs" Inherits="sendRequestGroupMember" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Request Group</title>
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

    <li class="nav-item">
      <a class="nav-link" href="index.aspx">Logout</a>
    </li>
  </ul>
</nav>
            </div>


    <div class="container">
        <center><h2>Student's Proposals</h2></center>

        

        <ul class="list-group">
    <li class="list-group-item">Idea Details:<p><br>StudentName: <br><br> <asp:Button ID="submitRequest" CssClass="btn btn-default" runat="server" Text="Request" /> </p></li>
           
    <li class="list-group-item">Idea Details:<p><br>StudentName: <br><br> <asp:Button ID="Button1" CssClass="btn btn-default" runat="server" Text="Request" /> </p></li>
  
            
  </ul>

        

    </div>


    </div>
    </form>
        <script src="js/jquery-1.11.2.min.js"</script>
    <script src="js/bootstrap.min.js" </script>
</body>
</html>
