<%@ Page Title="Cambiar Contraseña" Language="C#" MasterPageFile="~/ScheduleSite.Master" AutoEventWireup="true" CodeBehind="MiAcceso.aspx.cs" Inherits="Schedule.MiAcceso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
    <!-- PAGE TOP -->
    <section class="page-title">
        <div class="container">

            <header>

                <ul class="breadcrumb">
                    <!-- breadcrumb -->
                    <li><a href="#">Lusor</a></li>
                    <li class="active">Acceso</li>
                </ul>
                <!-- /breadcrumb -->

                <h2>
                    <!-- Page Title -->
                    <strong>Cambiar</strong> Contraseña
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


                <div class="col-md-6">


                    <!-- password -->
                    <div class="sky-form boxed">
                        <header>Cambiar Contraseña</header>

                        <fieldset>
                             
                            <section>
                                <label class="label">Contraseña Actual</label>
                                <label class="input">
                                    <i class="icon-append fa fa-lock"></i>
                                    <b class="tooltip tooltip-bottom-right">Your current password</b>
                                    <asp:TextBox ID="txtPassActual" runat="server" required type="password" placeholder="Password">
                                    </asp:TextBox>
                                </label>
                            </section>

                            <section>
                                <label class="label">Nueva Contraseña</label>
                                <label class="input">
                                    <i class="icon-append fa fa-lock"></i>
                                    <b class="tooltip tooltip-bottom-right">Type a new password (min.3 chr.)</b>
                                    <asp:TextBox ID="txtPassNuevo" runat="server" required type="password" placeholder="Password">
                                    </asp:TextBox>
                                </label>
                            </section>

                            <section>
                                <label class="label">Confirmar Nueva Contraseña</label>
                                <label class="input">
                                    <i class="icon-append fa fa-lock"></i>
                                    <b class="tooltip tooltip-bottom-right">Type the new password again</b>
                                    <asp:TextBox ID="txtPassConfirmar" runat="server" required type="password" placeholder="Password">
                                    </asp:TextBox>
                                </label>
                            </section>
                            <section>
                                <asp:UpdatePanel ID="updatePanel1" runat="server" UpdateMode="Always">
                                    <ContentTemplate>
                                        <asp:Label class="label label-success" ID="lblCorrecto" runat="server" ForeColor="White" Style="text-align: center; border-radius: 5pt" Visible="False"></asp:Label>
                                        <asp:Label class="label label-danger" ID="lblError" runat="server" ForeColor="White" Style="text-align: center; border-radius: 5pt" Visible="False"></asp:Label>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </section>
                        </fieldset>

                        <footer>
                            <asp:UpdatePanel ID="updatePanel3" runat="server" UpdateMode="Always">
                                <ContentTemplate>
                                    <asp:Button ID="btnCambiarPass" runat="server" class="button" Style="border-radius: 5pt" Text="Cambiar Contraseña" OnClick="btnCambiarPass_Click"  />
                                </ContentTemplate>
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="btnCambiarPass" EventName="Click" />
                                </Triggers>
                            </asp:UpdatePanel>
                        </footer>
                    </div>
                    <!-- /password -->

                </div>

            </div>

        </div>
    </section>
    <!-- /CONTENT -->
    <div class="col-md-0">
    </div>

    <script type="text/javascript">
        $(document).ready(function () {
            setInterval(function () {
                $("#<%= lblError.ClientID %>").hide(3000)
            }, 4000);
        });
    </script>

    <script type="text/javascript">
        $(document).ready(function () {
            setInterval(function () {
                $("#<%= lblCorrecto.ClientID %>").hide(3000)
            }, 4000);
        });
    </script>
</asp:Content>
