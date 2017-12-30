<%@ Page Language="C#" AutoEventWireup="true" CodeFile="listOfSupervisors.aspx.cs" Inherits="listOfSupervisors" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Supervisor's List</title>
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
            <center><h1 style="margin-top:-25px">Coordinator</h1> </center>
            
        </div>

        <div id="navbar">
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand -->
  <a class="navbar-brand" href="coordinatorHome.aspx">Home</a>

  <!-- Links -->
  <ul class="navbar-nav">
      <a class="nav-link" href="listOfSupervisors.aspx" >
        Supervisor's List
      </a>
      
       <a class="nav-link" href="registeredGroupsC.aspx" >
        Registered Groups
      </a>

 <a class="nav-link" href="feedbackHCOO.aspx" >
        Feedback
      </a>
        <a class="nav-link" href="attendance.aspx" >
        Attendance
      </a>
        <a class="nav-link" href="scheduling.aspx" >
        Scheduling 
      </a>
       </ul>

      <ul class="nav navbar-nav navbar-right">       
    <li><a class="nav-link" href="index.aspx">Logout</a> </li>
          </ul>  
        
        </nav>
            </div>
        

         <br>
             <div class="container">
                <center><h2> List of Supervisors</h2></center>
                    

  <ul class="list-group">
      <div class="col-md-4"
                    <div class="col-md-6">
    <li class="list-group-item">Supervisor 1</li>
    <li class="list-group-item">Supervisor 2</li>
   
                       

  </ul>
                 <br>
                 <h4>New</h4>
                
                  <div class="form-horizontal">
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="ID"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="supervisorID" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                      
                       <div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Name"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="supervisoName" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                          </div>
                     

                 <asp:Button ID="Button1" CssClass="btn btn-default" runat="server" Text="Add" />
        
                 </div>
        </div>
                 </div>
    </div>
    </form>
        <script src="js/jquery-1.11.2.min.js"</script>
    <script src="js/bootstrap.min.js" </script>
</body>
</html>
