<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

     <title>CPMS</title>
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
                        
            <center> <h1  style="margin-top:-25px">Capstone Project Management System</h1> </center>
        
        </div>
                       
    <center><h3>Login</h3> </center>
    <hr>

    <a href="studentHome.aspx">StudentHome</a><a href="supervisorHome.aspx">SupervisorHome</a> <a href="hodHome.aspx">HODHome</a> <br>  <a href="studentHome1.aspx">StudentMain</a><a href="supervisorHome1.aspx">SupervisorMain</a> <a href="coordinatorHome.aspx">Coordinator</a>

            <div id="loginstyle">
                   
        <div class="container>
            <div class="form-horizontal">
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Placeholder="User Name" Text="Name"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="Username" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Placeholder="Password" Text="Password"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="Password" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                   <div class="col-md-3"></div>
                     <div class="col-md-6">

                    <asp:CheckBox ID="CheckBox1" runat="server" />
                    <asp:Label ID="Label3" runat="server" CssClass="control-label" Text="Remember Me"></asp:Label>
                       
                    </div>
                </div>
                 <div class="form-group">
                   <div class="col-md-2">
                    <div class="col-md-6">
                        <asp:Button ID="loginButton" CssClass="btn btn-default"  runat="server" Text="Login" OnClick="loginButton_Click"></asp:Button>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="reg" runat="server" OnSelectedIndexChanged="reg_SelectedIndexChanged">
                            <asp:ListItem Value="1">STUDENT</asp:ListItem>
                            <asp:ListItem Value="2">SUPERVISOR</asp:ListItem>
                            <asp:ListItem Value="3">COORDINATOR</asp:ListItem>
                            <asp:ListItem Value="4">FACULTY</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                        
            </div>
        </div>


            <p> Testing </p>



            </div>


</div>
    </div>
      <script src="js/jquery-1.11.2.min.js"></script>
    <script src="js/bootstrap.min.js"> </script>
    </form>
      
</body>
</html>
