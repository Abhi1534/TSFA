<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TSFA.Admin.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>TSFA - Dashboard Login</title>

    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="../../images/MainLogo.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">

    <!-- Fontawesome CSS -->
    <link rel="stylesheet" href="../assets/css/font-awesome.min.css">

    <!-- Main CSS -->
    <link rel="stylesheet" href="../assets/css/style.css">

    <!--[if lt IE 9]>
			<script src="assets/js/html5shiv.min.js"></script>
			<script src="assets/js/respond.min.js"></script>
		<![endif]-->
    <style>.ch{padding-left:100px;}</style>
</head>
<body>
    <form id="form1" runat="server">
        
        <!-- Main Wrapper -->
        <div class="main-wrapper login-body">
            <div class="login-wrapper">
                <div class="container">
                    <div class="loginbox">
                        <div class="login-left">
                            <img src="../Images/Logo.jpg" class="img-fluid" alt="Logo">
                            
                        </div>
                        <div class="login-right">
                            <div class="login-right-wrap">
                                <h1>Login</h1>
                                <p class="account-subtitle">Access to our dashboard</p>

                                <!-- Form -->

                                <div class="form-group">
                                    <asp:TextBox runat="server" class="form-control" placeholder="User Name" required="" ID="txt_UserName" />
                                </div>
                                <div class="form-group">
                                    <asp:TextBox runat="server" class="form-control" placeholder="Password" required="" ID="txt_password" TextMode="Password" />
                                </div>
                                <div class="form-group">
                                    <asp:Button Text="Login" runat="server" class="btn btn-primary btn-block" OnClick="btn_login_Click" ID="btn_login" />
                                </div>
                                 <div class="form-group">
                                    <asp:Label runat="server"   ID="lblError" Text="Please Enter Valid credentials" ForeColor="Red" Visible="false" />
                                </div>
                                
                                

                                <!-- /Form -->
                                <div class="text-left">
                                    <asp:CheckBox Text="Remember" runat="server" ID="cb_Remember" />
                                </div>

                                <div class="text-center forgotpass"><a href="forgot-password.html">Forgot Password?</a></div>
                              
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /Main Wrapper -->

        <!-- jQuery -->
        <script src="../assets/js/jquery-3.2.1.min.js"></script>

        <!-- Bootstrap Core JS -->
        <script src="../assets/js/popper.min.js"></script>
        <script src="../assets/js/bootstrap.min.js"></script>

        <!-- Custom JS -->
        <script src="../sassets/js/script.js"></script>
    </form>
</body>
</html>

