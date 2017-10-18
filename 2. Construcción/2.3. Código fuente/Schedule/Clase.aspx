<%@ Page Title="Mantenimiento Clase" Language="C#" MasterPageFile="~/ScheduleSite.Master" AutoEventWireup="true" CodeBehind="Clase.aspx.cs" EnableEventValidation="False" Inherits="Schedule.Clase" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <section>
        <div class="container">
            <div class="row">
                <h2>Mantenimiento Clase</h2>
            </div>

            <div class="row">
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <div class="col-md-7">
                            <div class="row">
                                <div class="col-md-1">
                                </div>
                                <div class="col col-md-3">
                                    Nuevo Registro ?
                                </div>
                                <div class="col col-md-1">
                                    <asp:CheckBox ID="chbNuevoRegistro" runat="server" Text="" AutoPostBack="true" Checked="True" /> 
                                </div>
                            </div>

                            <br />
                            <div class="form-group">
                                <div class="row">
                                    <div class="row">
                                        <div class="col col-md-2">
                                            Profesor: 
                                        </div>
                                        <div class="col col-md-4">
                                            <asp:UpdatePanel ID="updatePanel" runat="server" UpdateMode="Conditional">
                                                <ContentTemplate>
                                                    <asp:DropDownList ID="cmbProfesor" runat="server" AutoPostBack="true"></asp:DropDownList>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col col-md-2">
                                            Curso: 
                                        </div>
                                        <div class="col col-md-4">
                                            <asp:UpdatePanel ID="updatePanel1" runat="server" UpdateMode="Conditional">
                                                <ContentTemplate>
                                                    <asp:DropDownList ID="cmbCurso" runat="server" AutoPostBack="true"></asp:DropDownList>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col col-md-2">
                                            Duracion: 
                                        </div>
                                        <div class="col col-md-4">
                                            <asp:TextBox ID="txtDuracion" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col col-md-2">
                                            Laboratorio: 
                                        </div>
                                        <div class="col col-md-4">
                                            <asp:CheckBox ID="chbLaboratorio" runat="server" />
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col col-md-2">
                                            Activo: 
                                        </div>
                                        <div class="col col-md-4">
                                            <asp:CheckBox ID="chbActivo" runat="server" AutoPostBack="true" />
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <br />
                                        <asp:Label class="label label-danger" ID="lblError" runat="server" ForeColor="White" AutoPostBack="true" Visible="False" Style="text-align: center;"></asp:Label>
                                        <br />
                                    </div>

                                    <div class="row">
                                        <div class="col-md-1">
                                            <asp:Button ID="btnGuardar" runat="server" Text="Guardar" ValidationGroup="Transfer" CssClass="btn btn-success" />
                                        </div>
                                        <div class="col-md-2">
                                        </div>
                                        <div class="col-md-1">
                                            <asp:Button ID="btnEditar" runat="server" Text="Modificar" ValidationGroup="Transfer" CssClass="btn btn-primary" />
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>

                <div class="col-md-1">
                </div>

                <div class="col-md-5">
                    <div class="table-responsive">
                        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                            <ContentTemplate>
                                <asp:GridView ID="dgvClase"
                                    Font-Names="Arial"
                                    Font-Size="0.75em"
                                    CellPadding="5" CellSpacing="0" ForeColor="#333"
                                    DataKeyNames="Id,Curso,Profesor,Duracion,Laboratorio,Activo"
                                    AutoGenerateColumns="false"
                                    runat="server" OnRowCommand="dgvClase_RowCommand" OnRowCreated="dgvClase_RowCreated">

                                    <Columns>
                                        <asp:BoundField DataField="CursoN" HeaderText="Curso" />
                                        <asp:BoundField DataField="ProfesorN" HeaderText="Profesor" />
                                        <asp:BoundField DataField="Id" HeaderText="Id" />
                                        <asp:BoundField DataField="Curso" HeaderText="Curso" />
                                        <asp:BoundField DataField="Profesor" HeaderText="Profesor" />
                                        <asp:BoundField DataField="Duracion" HeaderText="Duracion" />
                                        <asp:BoundField DataField="Laboratorio" HeaderText="Laboratorio" />
                                        <asp:BoundField DataField="Activo" HeaderText="Activo" />
                                    </Columns>

                                    <SelectedRowStyle BackColor="Cyan" />


                                    <HeaderStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Top" BackColor="SaddleBrown" ForeColor="Ivory" />

                                    <RowStyle ForeColor="SaddleBrown" />


                                </asp:GridView>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>

            </div>




        </div>
    </section>


    <script type="text/javascript">
        $(document).ready(function () {
            setInterval(function () {
                $("#<%= lblError.ClientID %>").hide(2000)
            }, 4000);
        });
    </script>




</asp:Content>
