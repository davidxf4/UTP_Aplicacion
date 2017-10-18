<%@ Page Title="Restricciones" Language="C#" MasterPageFile="~/ScheduleSite.Master" AutoEventWireup="true" CodeBehind="Restriccion.aspx.cs" Inherits="Schedule.Restriccion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- PAGE TOP -->
    <section class="page-title">
        <div class="container">

            <header>

                <ul class="breadcrumb">
                    <!-- breadcrumb -->
                    <li><a href="#">Lusor</a></li>
                    <li class="active">Utilidades</li>
                </ul>
                <!-- /breadcrumb -->

                <h2>
                    <!-- Page Title -->
                    Restricciones
                </h2>
                <!-- /Page Title -->

            </header>

        </div>
    </section>
    <!-- /PAGE TOP -->

    <section>
        <div class="row">

            <div class="col-md-4">
            </div>

            <div class="col-md-7">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <div class="col-md-6  sky-form boxed">
                            <header>Configurar Restricciones</header>
                            <div class="row">
                                <fieldset>
                                    <section>
                                        <div class="col col-md-4">
                                          <strong> N° de Asientos: </strong>  
                                        </div>
                                        <div class="col col-md-7">
                                            <asp:TextBox ID="txtNroAsiento" required type="number" runat="server" Width="40" MaxLength="2"></asp:TextBox>&nbsp; Asientos &nbsp;
                                            <asp:RegularExpressionValidator ID="REV1"
                                                Text="N° Invalido"
                                                ControlToValidate="txtNroAsiento"
                                                ForeColor="Red"
                                                Font-Bold="true"
                                                runat="server" Display="Dynamic"
                                                ValidationGroup="Transfer"
                                                ValidationExpression="\d+"
                                                EnableClientScript="true"
                                                SetFocusOnError="true">
                                            </asp:RegularExpressionValidator>
                                            <asp:RegularExpressionValidator
                                                ValidationGroup="Transfer"
                                                Display="Dynamic"
                                                ForeColor="Red"
                                                Font-Bold="true"
                                                ControlToValidate="txtNroAsiento"
                                                ID="REV11"
                                                ValidationExpression="^[\s\S]{0,2}$"
                                                runat="server"
                                                Text="Maximo 2 Numeros"
                                                EnableClientScript="true"
                                                SetFocusOnError="true">
                                            </asp:RegularExpressionValidator>
                                        </div>
                                    </section>
                                </fieldset>
                                <fieldset>
                                    <section>
                                        <div class="col col-md-4">
                                           <strong>N° de Estudiantes:</strong>  
                                        </div>
                                        <div class="col col-md-7">
                                            <asp:TextBox ID="txtNroEstudiante" required type="number" runat="server" Width="40" MaxLength="2"></asp:TextBox>&nbsp; Estudiantes &nbsp;
                                            <asp:RegularExpressionValidator ID="REV2"
                                                Text="Numero Invalido"
                                                ControlToValidate="txtNroEstudiante"
                                                ForeColor="Red"
                                                Font-Bold="true"
                                                runat="server" Display="Dynamic"
                                                ValidationGroup="Transfer"
                                                ValidationExpression="\d+"
                                                EnableClientScript="true"
                                                SetFocusOnError="true">
                                            </asp:RegularExpressionValidator>
                                            <asp:RegularExpressionValidator
                                                ValidationGroup="Transfer"
                                                Display="Dynamic"
                                                ForeColor="Red"
                                                ControlToValidate="txtNroEstudiante"
                                                ID="REV22"
                                                ValidationExpression="^[\s\S]{0,2}$"
                                                runat="server"
                                                Text="Maximo 2 Numeros"
                                                Font-Bold="true"
                                                EnableClientScript="true"
                                                SetFocusOnError="true">
                                            </asp:RegularExpressionValidator>
                                        </div>
                                    </section>
                                </fieldset>
                                <fieldset>
                                    <section>
                                        <div class="col col-md-4">
                                           <strong>Duración de Clase:</strong>  
                                        </div>
                                        <div class="col col-md-7">
                                            <asp:TextBox ID="txtDurClase" required type="number" runat="server" Width="40" MaxLength="2"></asp:TextBox>&nbsp; Minutos &nbsp;
                                            <asp:RegularExpressionValidator ID="REV3"
                                                Text="N° Invalido"
                                                ControlToValidate="txtDurClase"
                                                ForeColor="Red"
                                                Font-Bold="true"
                                                runat="server" Display="Dynamic"
                                                ValidationGroup="Transfer"
                                                ValidationExpression="\d+"
                                                EnableClientScript="true"
                                                SetFocusOnError="true">
                                            </asp:RegularExpressionValidator>
                                            <asp:RegularExpressionValidator
                                                ValidationGroup="Transfer"
                                                Display="Dynamic"
                                                ForeColor="Red"
                                                ControlToValidate="txtDurClase"
                                                ID="REV33"
                                                ValidationExpression="^[\s\S]{0,2}$"
                                                runat="server"
                                                Text="Maximo 2 Numeros"
                                                Font-Bold="true"
                                                EnableClientScript="true"
                                                SetFocusOnError="true">
                                            </asp:RegularExpressionValidator>
                                        </div>
                                    </section>
                                </fieldset>
                                <fieldset>
                                    <section>
                                        <div class="col col-md-4">
                                           <strong>Horas por Clase:</strong>  
                                        </div>
                                        <div class="col col-md-7">
                                            <asp:TextBox ID="txtHorClase" required type="number" runat="server" Width="40" MaxLength="2"></asp:TextBox>&nbsp; Horas &nbsp;
                                            <asp:RegularExpressionValidator ID="REV4"
                                                Text="N° Invalido"
                                                ControlToValidate="txtHorClase"
                                                ForeColor="Red"
                                                Font-Bold="true"
                                                runat="server" Display="Dynamic"
                                                ValidationGroup="Transfer"
                                                ValidationExpression="\d+"
                                                EnableClientScript="true"
                                                SetFocusOnError="true">
                                            </asp:RegularExpressionValidator>
                                            <asp:RegularExpressionValidator
                                                ValidationGroup="Transfer"
                                                Display="Dynamic"
                                                ForeColor="Red"
                                                ControlToValidate="txtHorClase"
                                                ID="REV44"
                                                ValidationExpression="^[\s\S]{0,2}$"
                                                runat="server"
                                                Font-Bold="true"
                                                Text="Maximo 2 Numeros"
                                                EnableClientScript="true"
                                                SetFocusOnError="true">
                                            </asp:RegularExpressionValidator>
                                        </div>
                                    </section>
                                </fieldset>
                            </div>
                            <footer>
                                <asp:Button ID="btnGuardar" runat="server" Text="Guardar" ValidationGroup="Transfer" CssClass="button" OnClick="btnGuardar_Click" />
                            </footer>
                            <asp:Label class="label label-success" ID="lblCorrecto" runat="server" ForeColor="White" AutoPostBack="true" Visible="False" Style="text-align: center; border-radius: 5pt"></asp:Label>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>


            <div class="col-md-1">
            </div>


        </div>
    </section>

    <script type="text/javascript">
        $(document).ready(function () {
            setInterval(function () {
                $("#<%= lblCorrecto.ClientID %>").hide(2000)
            }, 4000);
        });
    </script>

    <!--<script type="text/javascript">
        $(function () {
            $("[id*=txtHorClase]").MaxLength(
                {
                    MaxLength: 2,
                    DisplayCharacterCount: false
                });
        });
     </script> -->

    <!-- <script type="text/javascript">
        $(function () {
            $('#txtHorClase').keypress(function (e) {
                var txt = $(this).val();
                if (txt.length > 2) {
                    e.preventDefault();
                }
            });
        });
    </script> -->


</asp:Content>
