<%@ Page Title="Inicio" Language="C#" MasterPageFile="~/ScheduleSite.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Schedule.Inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!-- PAGE TOP -->
    <section class="page-title">
        <div class="container">

            <header>

                <ul class="breadcrumb">
                    <!-- breadcrumb -->
                    <li><a href="#">Lusor</a></li>

                </ul>
                <!-- /breadcrumb -->

                <h2>
                    <!-- Page Title -->
                    DashBoard
                </h2>
                <!-- /Page Title -->

            </header>

        </div>
    </section>
    <!-- /PAGE TOP -->

    <!-- CONTENT -->
    <section>
        <div class="container">

            <div class="clearfix tab-header">

                <!-- tabs nav -->
                <ul class="nav nav-tabs pull-left">
                    <li class="active">
                        <!-- TAB 1 -->
                        <a href="#tab-1" data-toggle="tab"><i class="fa fa-eye text-muted"></i>Inicio</a>
                    </li>
                </ul>
                <!-- /tabs nav -->

            </div>

            <div class="clearfix tab-body profile-tabs">

                <!-- tabs content -->
                <div class="tab-content transparent">

                    <!-- TAB 1 CONTENT -->
                    <div id="tab-1" class="tab-pane active">

                        <div class="row">

                            <!-- LEFT -->
                            <div class="col-lg-4 col-md-5">

                                <!-- IMAGE -->
                                <figure class="default-gradient bg-silver text-center margin-bottom8">
                                    <!-- 230 x 340 px -->
                                    <img class="img-responsive" src="Content/Image/Site/9_thumb.jpg" alt="" />
                                </figure>
                                <!-- /IMAGE -->

                                <!-- BUTTONS -->
                                <div class="margin-bottom8 profile-buttons">
                                    <div class="row text-center">

                                        <!-- Followers -->
                                        <div class="col-md-6 col-sm-6 col-xs-6">
                                            <h2>20,7K</h2>
                                            <span class="block text-muted fsize12">Followers</span>

                                            <a href="#" class="btn btn-success btn-sm margin-top20">
                                                <span class="fa fa-plus-circle"></span>Follow 
                                            </a>
                                        </div>

                                        <!-- Following -->
                                        <div class="col-md-6 col-sm-6 col-xs-6">
                                            <h2>1,3K</h2>
                                            <span class="block text-muted fsize12">Following</span>

                                            <a href="#" class="btn btn-info btn-sm margin-top20">
                                                <span class="fa fa-user"></span>Profile 
                                            </a>
                                        </div>

                                    </div>
                                </div>
                                <!-- /BUTTONS -->


                                <!-- /USER ACTIVITY -->

                            </div>

                            <!-- RIGHT -->
                            <div class="col-md-7">

                                <h3 class="nomargin">Hola :
                                    <asp:Label ID="lblNombreUser" runat="server" Text=""></asp:Label></h3>
                                <span class="margin-bottom20 margin-top6 block gray fsize12">Creative Director</span>

                                <p>
                                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt laoreet dolore magna aliquam tincidunt erat volutpat laoreet dolore magna aliquam tincidunt erat volutpat. 
                                </p>


                            </div>

                        </div>

                    </div>
                    <!-- /TAB 1 CONTENT -->

                </div>


            </div>

        </div>
    </section>
</asp:Content>
