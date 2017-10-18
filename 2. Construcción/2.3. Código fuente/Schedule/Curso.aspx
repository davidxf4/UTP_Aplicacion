<%@ Page Title="Mantenimiento Curso" Language="C#" MasterPageFile="~/ScheduleSite.Master" AutoEventWireup="true" CodeBehind="Curso.aspx.cs" Inherits="Schedule.Curso" EnableEventValidation="False" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <section>
        <div class="container">
            <div class="row">
                <h2>Mantenimiento Curso</h2>
            </div>

            <div class="row">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <div class="col-md-7">
                            <div class="row">
                                <div class="col-md-1">
                                </div>
                                <div class="col col-md-3">
                                    Nuevo Registro ?
                                </div>
                                <div class="col col-md-1">
                                    <asp:CheckBox ID="chbNuevoRegistro" runat="server" Text="" AutoPostBack="true" Checked="True" OnCheckedChanged="chbNuevoRegistro_CheckedChanged" />
                                </div>
                            </div>

                            <br />
                            <div class="form-group">
                                <div class="row">
                                    <div class="row">
                                        <div class="col col-md-1">
                                            Nombre: 
                                        </div>
                                        <div class="col col-md-9">
                                            <asp:TextBox ID="txtNombre" required type="text" runat="server" placeholder="Nombre del Curso" Width="300" Style="text-transform: uppercase;"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                                ControlToValidate="txtNombre" ErrorMessage="Caracteres Invalidos"
                                                ForeColor="Red"
                                                Display="Static"
                                                ValidationGroup="Transfer"
                                                ValidationExpression="[a-zA-ZñÑ\s]{2,50}"></asp:RegularExpressionValidator>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col col-md-1">
                                            Activo: 
                                        </div>
                                        <div class="col col-md-4">
                                            <asp:CheckBox ID="chbActivo" runat="server" AutoPostBack="true" OnCheckedChanged="chbActivo_CheckedChanged" />
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
                                            <asp:Button ID="btnGuardar" runat="server" Text="Guardar" ValidationGroup="Transfer" CssClass="btn btn-success" OnClick="btnGuardar_Click" />
                                        </div>
                                        <div class="col-md-2">
                                        </div>
                                        <div class="col-md-1">
                                            <asp:Button ID="btnEditar" runat="server" Text="Modificar" ValidationGroup="Transfer" CssClass="btn btn-primary" OnClick="btnEditar_Click" />
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
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                                <asp:GridView ID="dgvCurso"
                                    Font-Names="Arial"
                                    Font-Size="0.75em"
                                    CellPadding="4"
                                    DataKeyNames="Id,Nombre Curso,Activo"
                                    AutoGenerateColumns="False"
                                    runat="server" AllowPaging="True" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" OnPageIndexChanging="dgvCurso_PageIndexChanging" OnRowCommand="dgvCurso_RowCommand" OnRowCreated="dgvCurso_RowCreated">

                                    <Columns>
                                        <asp:BoundField DataField="Id" HeaderText="Id" />

                                        <asp:BoundField DataField="Nombre Curso" HeaderText="Nombre Curso">
                                            <HeaderStyle Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="150px" Wrap="True" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="150px" />
                                        </asp:BoundField>

                                        <asp:BoundField DataField="Activo" HeaderText="Activo">
                                            <HeaderStyle Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="80px" Wrap="True" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="80px" />
                                        </asp:BoundField>
                                    </Columns>

                                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" VerticalAlign="Middle" />


                                    <HeaderStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Top" BackColor="#990000" ForeColor="#FFFFCC" />

                                    <PagerSettings FirstPageImageUrl="~/Content/Icon/Left_arrow.png" LastPageImageUrl="~/Content/Icon/double_arrow_right.png" Mode="NextPreviousFirstLast" NextPageImageUrl="~/Content/Icon/Right_arrow.png" PreviousPageImageUrl="~/Content/Icon/double_arrow_.png" />

                                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" VerticalAlign="Middle" />
                                    <RowStyle BackColor="White" ForeColor="#330099" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                                    <SortedDescendingHeaderStyle BackColor="#7E0000" />

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
