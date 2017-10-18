<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Schedule.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!-- PAGE TOP -->
    <section class="page-title">
        <div class="container">

            <header>

                <ul class="breadcrumb">
                    <!-- breadcrumb -->
                    <li><a href="#">Lusor</a></li>
                    <li class="active">Inicia Sesion</li>
                </ul>
                <!-- /breadcrumb -->

                <h2>
                    <!-- Page Title -->
                    Inicio de Sesion
                </h2>
                <!-- /Page Title -->

            </header>

        </div>
    </section>
    <!-- /PAGE TOP -->



    <!-- CONTENT -->
    <section>
        <div class="container">

            <div class="row">


                <div class="col-md-3">
                </div>

                <!-- LOGIN -->
                <div class="col-md-5">

                    <!-- login form -->
                    <form action="#" method="post" class="sky-form boxed" runat="server">
                        <header>Ingreso al Sistema</header>

                        <fieldset>

                            <section>
                                <label class="input">
                                    <i class="icon-append fa fa-envelope"></i>
                                    <asp:TextBox ID="txtUsuario" runat="server" required type="email" placeholder="Email address">
                                    </asp:TextBox>
                                    <b class="tooltip tooltip-bottom-right">El Usuario es su Correo Electronico</b>
                                </label>

                            </section>

                            <section>
                                <label class="input">
                                    <i class="icon-append fa fa-lock"></i>
                                    <b class="tooltip tooltip-bottom-right">Solo Letras y Numeros</b>
                                    <asp:TextBox ID="txtPass" runat="server" required type="password" placeholder="Password">
                                    </asp:TextBox>
                                </label>
                                <div class="note"><a href="DesbloquearUsuario.aspx">Desea Recuperar su Acceso?</a></div>
                            </section>

                            <asp:Label class="label label-danger" ID="lblError" runat="server" ForeColor="White" Visible="False" Style="text-align: center;"></asp:Label>

                        </fieldset>
                        <footer>
                            <asp:Button ID="BtnIngresar" runat="server" class="button" Text="Ingresar" OnClick="BtnIngresar_Click" />
                        </footer>
                    </form>
                    <!-- /login form -->


                </div>
                <!-- /LOGIN -->

            </div>

            <div class="col-md-0">
            </div>

        </div>

    </section>
    <!-- /CONTENT -->

    <script type="text/javascript">
        $(document).ready(function () {
            setInterval(function () {
                $("#<%= lblError.ClientID %>").hide(2000)
            }, 5000);
        });
    </script>


</asp:Content>
