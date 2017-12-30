<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewFRsSupervisor.aspx.cs" Inherits="viewFRsSupervisor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View FRs</title>
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
            <center><h1 style="margin-top:-25px">Supervisor</h1> </center>
            
        </div>

        <div id="navbar">
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand -->
  <a class="navbar-brand" href="supervisorHome1.aspx">Home</a>

  <!-- Links -->
  <ul class="navbar-nav">
      <a class="nav-link" href="viewFRsSupervisor.aspx" >
        View FRs
      </a>
      
       <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="" id="navbardrop" data-toggle="dropdown">
        View Documents
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="">Use Cases</a>
        <a class="dropdown-item" href="">ERD</a>
          <a class="dropdown-item" href="">Database Schema</a>
        
      </div>
    </li>
      
      <a class="nav-link" href="conductMeeting.aspx" >
        Conduct Meeting
      </a>
       </ul>

      <ul class="nav navbar-nav navbar-right">       
    <li><a class="nav-link" href="index.aspx">Logout</a> </li>
          </ul>  
        
        </nav>
            </div>
        

         <br>
             <div class="container">
  <center><h2>Functional Requiremets</h2></center>
                 <br>

                   <div class="col-md-3">
                    <div class="col-md-6">
                        <div class="form-group">
                               <li class="list-group-item">FR01</li>
                               
  
                       </div>
                    </div>
                   </div>

                   <div class="col-md-8">
                        <div class="col-md-8">
                            <div class="form-group">
                               <li class="list-group-item">System shall allow user to login.</li>
  
                            </div>
                        </div>  
                    </div>

                  <div class="col-md-3">
                    <div class="col-md-6">
                        <div class="form-group">
                               <li class="list-group-item">FR02</li>
                               
  
                       </div>
                    </div>
                   </div>

                   <div class="col-md-8">
                        <div class="col-md-8">
                            <div class="form-group">
                               <li class="list-group-item">System shall allow user to update his/her profile pic.</li>
  
                            </div>
                        </div>  
                    </div>

                 </div>
    </div>
    </form>
        <script src="js/jquery-1.11.2.min.js"</script>
    <script src="js/bootstrap.min.js" </script>
</body>
</html>
