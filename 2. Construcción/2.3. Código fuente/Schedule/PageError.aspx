<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PageError.aspx.cs" Inherits="Schedule.PageError" %>

<html lang="es">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Error</title>

    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
        <%: Scripts.Render("~/bundles/TemplateJS") %>
        <%: Scripts.Render("~/bundles/MsAjaxJs") %>
    </asp:PlaceHolder>

    <webopt:BundleReference runat="server" Path="~/Content/css" />

    <link href="Content/Prueba.css" rel="stylesheet" type="text/css" />

    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />

    <style type="text/css">
        @import url("https://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css");
    </style>

    <style type="text/css">
        @font-face {
            font-family: 'Open Sans';
            font-style: normal;
            font-weight: 300;
            src: local('Open Sans Light'), local('OpenSans-Light'), url(https://fonts.gstatic.com/s/opensans/v13/DXI1ORHCpsQm3Vp6mXoaTaRDOzjiPcYnFooOUGCOsRk.woff) format('woff');
        }

        @font-face {
            font-family: 'Open Sans';
            font-style: normal;
            font-weight: 400;
            src: local('Open Sans'), local('OpenSans'), url(https://fonts.gstatic.com/s/opensans/v13/cJZKeOuBrn4kERxqtaUH3bO3LdcAZYWl9Si6vvxL-qU.woff) format('woff');
        }

        @font-face {
            font-family: 'Open Sans';
            font-style: normal;
            font-weight: 400;
            src: local('Open Sans'), local('OpenSans'), url(https://fonts.gstatic.com/s/opensans/v13/cJZKeOuBrn4kERxqtaUH3bO3LdcAZYWl9Si6vvxL-qU.woff) format('woff');
        }

        @font-face {
            font-family: 'Open Sans';
            font-style: normal;
            font-weight: 400;
            src: local('Open Sans'), local('OpenSans'), url(https://fonts.gstatic.com/s/opensans/v13/cJZKeOuBrn4kERxqtaUH3bO3LdcAZYWl9Si6vvxL-qU.woff) format('woff');
        }
    </style>



</head>

<body class="smoothscroll">

    <div id="wrapper">

        <div id="header">
            <!-- class="sticky" for sticky menu -->

            <!-- Top Bar -->
            <header id="topBar">
                <div class="container">

                    <div class="pull-right fsize13 margin-top10 hide_mobile">

                        <!-- mail , phone -->
                        <a href="mailto:informes@lusor.academy">informes@lusor.academy</a> &bull; (054) 65-51-18

							<div class="block text-right">
                                <!-- social -->
                                <a href="#" class="social fa fa-facebook"></a>
                                <a href="#" class="social fa fa-twitter"></a>
                            </div>
                        <!-- /social -->

                    </div>

                    <!-- Logo -->
                    <a class="logo" href="Default.aspx">
                        <img src="Content/Image/MasterPage/logo-lusor.png" height="50" alt="" />
                    </a>

                </div>
                <!-- /.container -->
            </header>
            <!-- /Top Bar -->

        </div>



        <!-- PAGE TOP -->
        <section class="page-title">
            <div class="container">

                <header>

                    <ul class="breadcrumb">
                        <!-- breadcru-->

                        <h2>
                            <!-- Page Title -->
                            Ocurrio un Problema
                        </h2>
                        <!-- /Page Title -->
                </header>

            </div>
        </section>
        <!-- /PAGE TOP -->

        <!-- CONTENT -->
        <section>
            <div class="container">

                <div class="row default-e404">

                    <div class="col-md-12">

                        <span class="default-404"><i class="fa fa-file"></i>404</span>
                        <p class="text-center lead">Lo sentimos, pero la página que estaba buscando no existe.</p>
                        <form runat="server">
                            <asp:Button runat="server" ID="btnError" Text="Ir a Inicio" CssClass="btn btn-primary center-block" OnClick="btnError_Click" />
                        </form>
                    </div>
                </div>

            </div>
        </section>
        <!-- /CONTENT -->








        <!-- FOOTER -->
        <footer id="footer">
            <div class="container">

                <div class="row">

                    <!-- col #1 -->
                    <div class="logo_footer col-md-8">

                        <img alt="" src="Content/Image/MasterPage/logo-lusor2.png" height="50" class="logo" />

                        <p class="block" style="text-align: justify">
                            Valoramos la ambición, la pasión y la acción. Al combinar los últimos avances tecnológicos con las mejores prácticas, nuestra misión es convertirnos en la plataforma líder en aprendizaje digital a nivel global para así ayudar a educadores y estudiantes a alcanzar su máximo potencial.								
                        </p>
                    </div>
                    <!-- /col #1 -->

                    <!-- col #2 -->
                    <div class="spaced col-md-4">
                        <h4>Nosotros </h4>
                        <p>
                            Nuestra tecnología y nuestras herramientas se encuentran, al igual que nuestra comunidad de usuarios, en constante evolución.
                        </p>


                    </div>
                    <!-- /col #2 -->

                </div>

            </div>

            <hr />

            <div class="copyright">
                <div class="container text-center fsize12">
                    Lusor by <a href="http://www.netfyks.com" target="_blank" title="bootstrap themes &amp; templates" class="copyright">Netfyks</a> &bull; All Right Reserved &copy; 
						<a href="page-privacy.html" class="fsize11">Politica de Privacidad </a>&bull; 
						<a href="page-terms.html" class="fsize11">Terminos del Servicio</a>
                </div>
            </div>
        </footer>
        <!-- /FOOTER -->

        <a href="#" id="toTop"></a>

    </div>
    <!-- /#wrapper -->


</body>

</html>
