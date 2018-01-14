<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Register</title>
    <!-- Required meta tags -->
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
  
    <!-- Bootstrap CSS -->
 <link rel="stylesheet" href="indexStyle.css" />
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous"/>

</head>
<body>
    <form id="form1" runat="server">
    <div>
     <div class="jumbotron" style="height:10px">
            <center> <h1 style="margin-top:-25px">Capstone Project Management System</h1> </center>
            
        </div>
    <center><h3>Registration</h3> </center>
    <hr>
            <div id="loginstyle">
                   
        <div class="container">
            <div class="form-horizontal">
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="ID"></asp:Label>
                    
                    <div class="col-md-3">
                        <asp:TextBox ID="id" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                 <div class="form-group">
                    <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Text="Name"></asp:Label>
                    
                    <div class="col-md-3">
                        <asp:TextBox ID="name" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Password"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="Password" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                 <div class="form-group">
                    <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label" Text="CGPA"></asp:Label>
                    
                    <div class="col-md-3">
                        <asp:TextBox ID="cgpa" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                 <div class="form-group">
                    <asp:Label ID="Label5" runat="server" CssClass="col-md-2 control-label" Text="CreditHr"></asp:Label>
                    
                    <div class="col-md-3">
                        <asp:TextBox ID="creditHr" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                 <div class="form-group">
                    <label for="ProjectId" class="col-sm-2 control-label">Project Id</label>
                    <div class="col-sm-3">
                        <asp:DropDownList ID="propID" runat="server">
                        </asp:DropDownList>
                    </div>
                </div>
                 <div class="form-group">
                    <div class="col-md-6">
                        <asp:Button ID="registerButton" CssClass="btn btn-default" runat="server" Text="Register" OnClick="registerButton_Click"></asp:Button>
                        &nbsp;&nbsp;
                        <asp:Button ID="login" CssClass="btn btn-default" runat="server" Text="Login" OnClick="login_Click1" Width="77px"></asp:Button>
                                                
                    </div>
                     <!--div>
                         <asp:BulletedList ID="msg" runat="server"></asp:BulletedList>
                     </div-->

            </div>
        </div>

            </div>
    </div>
         <script src="js/jquery-1.11.2.min.js"></script>
    <script src="js/bootstrap.min.js"> </script>
        </div>
    </form>
       
</body>
</html>
