<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login1.aspx.cs" Inherits="RentalSoftware.Login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Login</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">
</head>
    <body class="bg-gradient-primary">
         <form id="form1" runat="server">

  <div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-xl-5 col-lg-6 col-md-5">

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
             
              <div class="col-lg-12">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Welcome Back!</h1>
                  </div>
                  <form class="user">
                    <div class="form-group">
                        <asp:Label ID="LblUsername" runat="server" Text="UserName"></asp:Label>
                <asp:TextBox ID="TxtUsername" runat="server" CssClass="form-control"></asp:TextBox>  
                    </div>
                    <div class="form-group">
                        <asp:Label ID="LabelPassword" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="TxtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox> 
                    </div>
                   
                       <asp:Button ID="BtnLogin" runat="server" Text="Login" OnClick="BtnLogin_Click" CssClass=" btn btn-primary btn-user btn-block" />
                   
           </form>
                   
                  
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>

    </div>

  </div>
             </form>
        </body>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>



</html>
