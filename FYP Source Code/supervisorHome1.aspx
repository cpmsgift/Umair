<%@ Page Language="C#" AutoEventWireup="true" CodeFile="supervisorHome1.aspx.cs" Inherits="supervisorHome1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
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
            <div class="jumbotron" style="height: 10px">
                <center><h1 style="margin-top:-25px">Supervisor</h1> </center>

            </div>

            <div id="navbar">
                <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
                    <!-- Brand -->
                    <a class="navbar-brand" href="supervisorHome1.aspx">Home</a>

                    <!-- Links -->
                    <ul class="navbar-nav">
                        <a class="nav-link" href="conductMeeting.aspx">Conduct Meeting
                        </a>
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <li><a class="nav-link" href="index.aspx">Logout</a> </li>
                    </ul>

                </nav>
            </div>


            <br />
            <div class="container">
                <center><h2>Projects</h2></center>
                <br />
                <asp:DropDownList ID="supDropdown" runat="server" OnSelectedIndexChanged="supDropdown_SelectedIndexChanged"></asp:DropDownList>
                 &nbsp;&nbsp; &nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="OPEN" />
                <div>
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Action" ShowHeader="True" Text="View Progess" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </div>
                <!--h2>Project 1</!--h2-->
                <!--p>Student Name</p-->
                <!--div class="card" style="width: 400px">

                    <div class="card-body">
                        <h4 class="card-title">Breif Description</h4>
                        <p class="card-text">The Project is all about .....</p>
                        <a href="projectProgress1.aspx" class="btn btn-primary">Project Progress</a>
                    </div>
                </div-->


                <br />
            </div>
        </div>
        <script src="js/jquery-1.11.2.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </form>

</body>
</html>
