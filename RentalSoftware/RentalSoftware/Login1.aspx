﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login1.aspx.cs" Inherits="RentalSoftware.Login1" %>

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

      <div class="col-xl-10 col-lg-12 col-md-9">

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
              <div class="col-lg-6">
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
                    <div class="form-group">
                      <div class="custom-control custom-checkbox small">
                        <input type="checkbox" class="custom-control-input" id="customCheck">
                        <label class="custom-control-label" for="customCheck">Remember Me</label>
                      </div>
                    </div>
                       <asp:Button ID="BtnLogin" runat="server" Text="Login" OnClick="BtnLogin_Click" CssClass=" btn btn-primary btn-user btn-block" />
                   
                    <hr>
                    <a href="index.html" class="btn btn-google btn-user btn-block">
                      <i class="fab fa-google fa-fw"></i> Login with Google
                    </a>
                    <a href="index.html" class="btn btn-facebook btn-user btn-block">
                      <i class="fab fa-facebook-f fa-fw"></i> Login with Facebook
                    </a>
                  </form>
                  <hr>
                  <div class="text-center">
                    <a class="small" href="forgot-password.html">Forgot Password?</a>
                  </div>
                  <div class="text-center">
                    <a class="small" href="register.html">Create an Account!</a>
                  </div>
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


<%--<body>
   
        <div class="container">
            <div class="form-group">
                
               
            </div>
        



        <div class="form-group">

           
        </div>


            <div class="row-m-2">
                <div class="col-md-12">
                    <asp:Button ID="BtnLogin" runat="server" Text="Login" OnClick="BtnLogin_Click" CssClass=" btn btn-info" />
                    
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                        <asp:Button ID="BtnCancel" runat="server" Text="Cancel" CssClass=" btn btn-info" OnClick="BtnCancel_Click" />
                   
                </div>
            </div>
        </div>
        
        <p>
            &nbsp;</p>
        
    </form>
</body>--%>
</html>
