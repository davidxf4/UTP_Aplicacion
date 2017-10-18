<%@ Page Title="Clase Grupo" Language="C#" MasterPageFile="~/ScheduleSite.Master" AutoEventWireup="true" EnableEventValidation="False" CodeBehind="ClaseGrupo.aspx.cs" Inherits="Schedule.ClaseGrupo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <section>
        <div class="container">
            <div class="row">
                <h2>Mantenimiento Clase</h2>
            </div>


            <div class="row">
                <div class="col-md-1">
                </div>
                <div class="col-md-5">
                    <div class="table-responsive">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
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
                <div class="col-md-1">
                </div>
                <div class="col-md-5">
                    <div class="table-responsive">


                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                                <asp:GridView ID="dgvGrupo" runat="server"
                                    CssClass="table table-striped table-bordered table-hover"
                                    AutoGenerateColumns="False"
                                    EmptyDataText="No hay ninguna orden para el dia de hoy." AllowPaging="True" OnPageIndexChanging="dgvGrupo_PageIndexChanging" PageSize="2">
                                    <Columns>
                                        <asp:TemplateField HeaderText="Clase" ItemStyle-Width="5%" HeaderStyle-Width="5%" ItemStyle-ForeColor="#696C6E" ItemStyle-Height="30px" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label runat="server" ID="lblClase" Text='<%# Eval("Clase") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Grupo" ItemStyle-Width="5%" HeaderStyle-Width="5%" ItemStyle-ForeColor="#696C6E" ItemStyle-Height="30px" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="lblGrupo" runat="server" Text='<%# Eval("Grupo") %>' Font-Size="Smaller" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Nombre" ItemStyle-Width="5%" HeaderStyle-Width="5%" ItemStyle-ForeColor="#696C6E" ItemStyle-Height="30px" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="lblNombre" runat="server" Text='<%# Eval("nombre") %>' Font-Size="Smaller"></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Activo" ItemStyle-Width="5%" HeaderStyle-Width="5%" ItemStyle-ForeColor="#696C6E" ItemStyle-Height="30px" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:CheckBox ID="chkActivo" runat="server" Checked='<%# Eval("activo").ToString() == "1" ? true : false %>' OnCheckedChanged="chkActivo_CheckedChanged" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>


        </div>
    </section>


</asp:Content>
