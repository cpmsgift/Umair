<%@ Page Language="C#" AutoEventWireup="true" CodeFile="submitFRs.aspx.cs" Inherits="submitFRs" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FRs</title>
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
  <a class="navbar-brand" href="studentHome1.aspx">Home</a>

  <!-- Links -->
  <ul class="navbar-nav">
        <!-- Dropdown -->
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        FRs
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="submitFRs.aspx">Submit FRs</a>
        <a class="dropdown-item" href="viewFRs.aspx">View FRs</a>
        
      </div>
    </li>

           <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="" id="navbardrop" data-toggle="dropdown">
        Document Submission
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="submitUsecase.aspx">Use Cases</a>
        <a class="dropdown-item" href="">ERD</a>
          <a class="dropdown-item" href="">Database Schema</a>
        
      </div>
    </li>
 

         <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="" id="navbardrop" data-toggle="dropdown">
        Conduct Meeting
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="meetingRequestStudent.aspx">Meeting Request</a>
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
            <center><h2>Submit FRs</h2></center>
            <br/>

        <asp:HiddenField ID="hffr_id" runat="server" />
       
                        <table>
           
           

            <tr>
                <td>
                      
                    <asp:Label ID="Label1" runat="server" Text="Name: "></asp:Label>
                </td>
                

                <td >
                    <asp:TextBox ID="txtName" class="form-control" runat="server"></asp:TextBox>

                </td>
                       



            </tr>
            </div>
            </div>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Description: "></asp:Label>
                </td>
              <td>
                    <asp:TextBox ID="txtDescription" class="form-control" runat="server" ></asp:TextBox>
                  </td>
                


            </tr>
          

       
          

             <tr>
                <td>
                    
                </td>
                <td colspan="2">
                    <asp:Button ID="btnSave" CssClass="btn btn-default" runat="server" Text="Save" OnClick="btnSave_Click" />
                    <asp:Button ID="btnDelete" CssClass="btn btn-default" runat="server" Text="Delete" OnClick="btnDelete_Click" />
                    <asp:Button ID="btnClear" CssClass="btn btn-default" runat="server" Text="Clear" OnClick="btnClear_Click" />
                </td>


            </tr>

                <tr>
                <td>
                    
                </td>
                <td colspan="2">
                    <asp:Label ID="lblSuccessMessage" runat="server" Text="" ForeColor="Green"></asp:Label>
                </td>


            </tr>

                <tr>
                <td>
                    
                </td>
                <td colspan="2">
                    <asp:Label ID="lblErrorMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
                </td>


            </tr>

        </table>
        
                       
        <br/>
            <center><h2>Edit FRs</h2></center>
            <br/>
        <asp:GridView ID="gvFr" runat="server" AutoGenerateColumns="false"  Width="1000px"

                      AllowPaging="true" PageSize="8"

                      CssClass="Grid"                    

                      AlternatingRowStyle-CssClass="alt"

                      PagerStyle-CssClass="pgr" >
            <Columns>
                 <asp:BoundField DataField="fr_id" HeaderText="FR ID" />
                <asp:BoundField DataField="fr_name" HeaderText="Name" />
                
                
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkView" runat="server" CommandArgument='<%# Eval("fr_id") %>' OnClick="lnk_OnClick">Edit</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
        </asp:GridView>

    
    </div>
    </form>
</body>
</html>

