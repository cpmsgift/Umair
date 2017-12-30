<%@ Page Language="C#" AutoEventWireup="true" CodeFile="conductMeeting1.aspx.cs" Inherits="conductMeeting1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Conduct Meeting</title>
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
      
      <a class="nav-link" href="conductMeeting1.aspx" >
        Conduct Meeting
      </a>

       <a class="nav-link" href="" >
        Project Grading
      </a>

       </ul>

      <ul class="nav navbar-nav navbar-right">       
    <li><a class="nav-link" href="index.aspx">Logout</a> </li>
          </ul>  
        
        </nav>
            </div>
        

         <br>
             <div class="container">
                  <h2>Conduct Meeting</h2>
                 <br>


                  
                <div class="form-group">
                    <label for="status" class="col-sm-2 control-label">Select Group</label>
                    <div class="col-sm-3">
                        <select id="cmeeting" class="form-control">
                            <option>Project1</option>
                            <option>Project2</option>
                            
                        </select>
                    </div>
                </div>


   
    <div class="col-md-4"
                    <div class="col-md-6">

    <div class="form-group">
  <label for="comment">Message:</label>
  <textarea class="form-control" rows="5" id="comment"></textarea>
</div>

       
                        

        <asp:Button ID="Button1" runat="server" Text="Send" />
            </div>
        </div>

                 </div>
    </div>
    </form>
     <script src="js/jquery-1.11.2.min.js"</script>
    <script src="js/bootstrap.min.js" </script>
</body>
</html>
