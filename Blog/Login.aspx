<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Blog.Login" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Shekinah | </title>
        <link rel="icon" type="image/x-icon" href="#" /><!-- Falta el icono de la pestaña-->
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="Content/css/styles.css" rel="stylesheet" />
    </head>
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
            <div class="container">
                <a class="js-scroll-trigger" href="#page-top"><img src="Content/assets/img/LogoShekinah.png" height="70" width="250"/></a>
            </div>
        </nav>
        <!-- Masthead-->
        <header class="masthead">
            <div class="container">
                <div class="masthead-subheading"></div><br />
                <div class="masthead-heading text-uppercase"></div>
                <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="#contact">Iniciar Sesion</a> 
                <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="Index.aspx">Continuar...</a>
            </div>
        </header>
        <!-- Login-->
        <section class="page-section" id="contact">
            <div class="container"><br /><br />
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Iniciar Sesion</h2>
                </div>
                <form role="form" runat="server">
                    <center>
                        <fieldset>
                            <div class="col-md-12">
                                <div class="form-group col-md-6">
                                    <input class="form-control" runat="server" placeholder="Usuario" id="txt_UserName" type="text" autofocus>
                                </div>
                                <div class="form-group col-md-6">
                                    <input class="form-control" placeholder="Contraseña" id="txt_Password" type="password" runat="server">
                                </div>
                            </div>
                            <label id="msjError" runat="server" visible="false">Usuario o Contraseña incorrecto</label>
                            <asp:Button ID="Button1" runat="server" Text="Iniciar Sesion" CssClass="btn btn-primary btn-xl text-uppercase js-scroll-trigger" OnClick="btn_Aceptar_Click" />
                        </fieldset>
                   </center>
                </form>
            </div>
        </section>
        <!-- Footer-->
        <footer class="footer py-4">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-4 text-lg-left">Copyright © Joshua Quezada</div>
                    <div class="col-lg-4 my-3 my-lg-0">
                        <a class="btn btn-dark btn-social mx-2" href="https://www.facebook.com/shekinahhonduras"><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-dark btn-social mx-2" href="https://www.instagram.com/mshekinahn/?hl=es"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                    <div class="col-lg-4 text-lg-right">    
                        <a class="mr-3" href="#!">Privacy Policy</a>
                        <a href="#!">Terms of Use</a>
                    </div>
                </div>
            </div>
        </footer>
       
        <!-- Bootstrap core JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
        <!-- Third party plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
        <!-- Contact form JS-->
        <script src="Content/assets/mail/jqBootstrapValidation.js"></script>
        <script src="Content/assets/mail/contact_me.js"></script>
        <!-- Core theme JS-->
        <script src="Content/js/scripts.js"></script>
    </body>
</html>
