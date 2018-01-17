<%@ Page Language="C#" AutoEventWireup="true" CodeFile="supervisorHome1.aspx.cs" Inherits="supervisorHome1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="studentHomeStyle.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous" />

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
                <asp:GridView ID="gvFr" runat="server" AutoGenerateColumns="false" Width="1000px"
                    AllowPaging="true" PageSize="8"
                    CssClass="Grid"
                    AlternatingRowStyle-CssClass="alt"
                    PagerStyle-CssClass="pgr" OnSelectedIndexChanged="gvFr_SelectedIndexChanged">
                    <Columns>

                        <asp:BoundField DataField="proj_id" HeaderText="Projec Id" />
                        <asp:BoundField DataField="proj_name" HeaderText="Project Name" />

                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkView" runat="server"> Show Progress</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>

                    </Columns>


                </asp:GridView>

                <br />
            </div>
        </div>
        <script src="js/jquery-1.11.2.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </form>

</body>
</html>
