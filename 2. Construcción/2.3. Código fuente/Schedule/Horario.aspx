<%@ Page Title="Horario" Language="C#" MasterPageFile="~/ScheduleSite.Master" AutoEventWireup="true" CodeBehind="Horario.aspx.cs" Inherits="Schedule.Horario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <div class="row">
        <h1 align="center">Generar Horario</h1>
    </div>

    <!-- CONTENT -->
    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                            <asp:Panel runat="server" ID="SchedulePanel" HorizontalAlign="Center">
                                <asp:Image ID="ImageSchedule" runat="server" ImageUrl="~/Content/Image/schedule.jpg" ImageAlign="Middle" />
                            </asp:Panel>
                            <div class="table-responsive">
                                <asp:GridView ID="dgvHorario" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                                    <FooterStyle BackColor="White" ForeColor="#000066" />
                                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                    <RowStyle ForeColor="#000066" />
                                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                                </asp:GridView>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>
    </section>
    <!-- /CONTENT -->

    <div class="row">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="col col-md-12">
                    <div class="row">
                        <div class="col col-md-3">
                        </div>
                        <div class="col col-md-3">
                            <asp:Button ID="btnGenerarHorario" runat="server" Text="Generar Horario" Class="btn btn-primary center-block" OnClick="btnGenerarHorario_Click" />
                        </div>
                        <div class="col col-md-1">
                        </div>
                        <div class="col col-md-0">
                            <asp:Button ID="btnReporte" runat="server" Text="Generar Reporte" Class="btn btn-primary " OnClick="btnReporte_Click" />
                        </div>
                        <div class="col col-md-2">
                        </div>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <br />
    <br />




</asp:Content>
