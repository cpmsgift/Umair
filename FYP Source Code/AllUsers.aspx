<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AllUsers.aspx.cs" Inherits="FYP_Source_Code_AllUsers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register User</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="studentHomeStyle.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous" />
    <link rel="stylesheet" href="indexStyle.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script srcprojectlist="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="jumbotron" style="height: 10px">
            <center><h1 style="margin-top:-25px">REGISTERATION</h1> </center>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-xs-6 col-sm-3 ">
                   
                    <center><h3>User Register</h3> </center>
                    <div class="form-horizontal">
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Font-Bold="true" CssClass="col-md-2 control-label" Text="ID:"></asp:Label>

                            <div class="col-md-8">
                                <asp:TextBox ID="id" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label3" runat="server" Font-Bold="true" CssClass="col-md-2 control-label" Text="Name:"></asp:Label>

                            <div class="col-md-8">
                                <asp:TextBox ID="name" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label4" runat="server" Font-Bold="true" CssClass="col-md-2 control-label" Text="User Role:"></asp:Label>

                            <div class="col-md-8">
                                <asp:DropDownList ID="role" runat="server" Width="147px">
                                    <asp:ListItem Enabled="true" Text="Select Role..." Value="-1"></asp:ListItem>
                                    <asp:ListItem Text="Student" Value="0"></asp:ListItem>
                                    <asp:ListItem Text="Supervisor" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="Coordinator" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="Faculty" Value="3"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label5" runat="server" Font-Bold="true" CssClass="col-md-2 control-label" Text="Description:"></asp:Label>

                            <div class="col-md-8">
                                <asp:TextBox ID="Description" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label2" runat="server" Font-Bold="true" CssClass="col-md-2 control-label" Text="Password:"></asp:Label>
                            <div class="col-md-8">
                                <asp:TextBox ID="Password" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            &nbsp;
                        </div>
                        <div class="form-group">
                            <div class="col-md-6">
                                <asp:Button ID="registerButton"  Font-Bold="true" CssClass="btn btn-default" runat="server" Text="Register" OnClick="registerButton_Click"></asp:Button>
                                &nbsp;&nbsp;    
                                <asp:Label ID="SuccessMessage" runat="server" Text="" ForeColor="Green"></asp:Label>
                            </div>
                        </div>
                    </div>
                       
                </>

                <script src="js/jquery-1.11.2.min.js"></script>
                <script src="js/bootstrap.min.js"></script>
    </form>
</body>
</html>

