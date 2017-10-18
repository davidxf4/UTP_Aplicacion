<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Schedule._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

  <!-- REVOLUTION SLIDER -->
    <div class="slider fullwidthbanner-container roundedcorners">
        <div class="fullwidthbanner">
            <ul class="hide">

                <!-- SLIDE  -->
                <li data-transition="fade" data-slotamount="14" data-masterspeed="300" data-delay="10000">

                    <!-- COVER IMAGE -->
                    <img src="Content/Image/Slider/1x1.png" data-lazyload="Content/Image/Slider/dark.jpg" alt="" data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat" />

                    <div class="tp-caption medium_text lfl stl"
                        data-x="63"
                        data-y="200"
                        data-speed="300"
                        data-start="500"
                        data-easing="easeOutExpo">
                        Ingresa a la 
                    </div>

                    <div class="tp-caption large_bold_white sft stb"
                        data-x="60"
                        data-y="223"
                        data-speed="300"
                        data-start="1000"
                        data-easing="easeOutExpo">
                        UNIVERSIDAD
                    </div>

                    <div class="tp-caption italic small_light_white sft stb"
                        data-x="63"
                        data-y="286"
                        data-speed="500"
                        data-start="2000"
                        data-easing="easeOutExpo">
                        Da el primer &bull; paso a la vida &bull; que sueñas
                    </div>

                    <div class="tp-caption sft medium_light_white"
                        data-x="600"
                        data-y="60"
                        data-speed="600"
                        data-start="1500"
                        data-easing="easeOutExpo">
                        <img src="Content/Image/Site/desktop_slider_lusor.png" alt="" />
                    </div>

                </li>

                <!-- SLIDE  -->
                <li data-transition="fade" data-slotamount="14" data-masterspeed="300" data-delay="10000">

                    <!-- COVER IMAGE -->
                    <img src="Content/Image/Slider/1x1.png" data-lazyload="Content/Image/Slider/dark.jpg" alt="" data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat" />

                    <div class="tp-caption lft boxshadow"
                        data-x="70"
                        data-y="70"
                        data-speed="900"
                        data-start="500"
                        data-easing="easeOutBack">
                        <iframe src='http://player.vimeo.com/video/93972085?title=0&amp;byline=0&amp;portrait=0;api=1' width='640' height='360'></iframe>
                    </div>

                    <div class="tp-caption sft large_bold_white"
                        data-x="750"
                        data-y="57"
                        data-speed="300"
                        data-start="1200"
                        data-easing="easeOutExpo">
                        TU FUTURO
                    </div>

                    <div class="tp-caption lfb medium_light_white"
                        data-x="750"
                        data-y="180"
                        data-speed="300"
                        data-start="1400"
                        data-easing="easeOutExpo">
                        &bull; Preparate desde cualquier parte
                    </div>

                    <div class="tp-caption lfb medium_light_white"
                        data-x="750"
                        data-y="214"
                        data-speed="300"
                        data-start="1700"
                        data-easing="easeOutExpo">
                        &bull; Mas de 1000 Preguntas
                    </div>

                    <div class="tp-caption lfb medium_light_white"
                        data-x="750"
                        data-y="254"
                        data-speed="300"
                        data-start="2000"
                        data-easing="easeOutExpo">
                        &bull; Inicia cuando desees
                    </div>

                </li>

            </ul>
            <div class="tp-bannertimer"></div>
        </div>
    </div>
    <!-- /REVOLUTION SLIDER -->


    <!-- CALLOUT -->
    <div class="callout dark">
        <!-- add "styleBackgroundColor" class for colored background and white text OR "dark" for a dark callout -->
        <div class="container">

            <div class="row">

                <div class="col-md-9">
                    <!-- title + shortdesc -->
                    <h3>Utilice nuestro sistema de Simulador Online</h3>
                    <p>Las 24 horas del día y los 365 días del año.</p>
                </div>

                <div class="col-md-3">
                    <!-- button -->
                    <a href="Precios.aspx" rel="nofollow" class="btn btn-primary btn-lg">Empiece Ahora</a>
                </div>

            </div>

        </div>
    </div>
    <!-- /CALLOUT -->


    <!-- WELCOME -->
    <section>
        <div class="container">
            <header>
                <h2>Bienvenido a 
							<span class="word-rotator" data-delay="2000">
                                <!-- word rotator - default delay: 2000. Change rotating delay: data-delay="5000" -->
                                <span class="items bold">
                                    <span><em>tu nuevo futuro</em></span>

                                    <span><em>Lusor</em></span>
                                </span>
                            </span>
                    <!-- /word rotator -->
                </h2>
                <p class="lead" style="text-align: justify">Lusor es una version digital de una Academia Virtual.  Ademas usted puede acceder a nuestro completo simulador y realizar todos los test y exámenes que desee. Es un lugar donde los alumnos sin necesidad de desplazamientos pueden preparar su ingreso a la universidad.  </p>
            </header>



            <!-- FEATURED BOXES 3 -->
            <div class="row featured-box-minimal">

                <div class="col-md-4 col-sm-6 col-xs-12">
                    <h4><i class="fa fa-group"></i>Preparacion de Examenes</h4>
                    <p>Utiliza nuestro simulador y repasa todos los conceptos aprendidos.</p>
                </div>

                <div class="col-md-4 col-sm-6 col-xs-12">
                    <h4><i class="fa fa-code"></i>Accesible</h4>
                    <p>Contamos con planes accesibles para que puedas formarte e ingresar a la universidad que deseas.</p>
                </div>

                <div class="col-md-4 col-sm-6 col-xs-12">
                    <h4><i class="fa fa-bars"></i>Desde Cualquier Lugar</h4>
                    <p>Disponible en cualquier dispositivo con conexión a Internet. Sin límites.</p>
                </div>


            </div>
            <!-- /FEATURED BOXES 3 -->

        </div>
    </section>
    <!-- /WELCOME -->


    <!-- PREMIUM -->
    <section class="alternate">
        <div class="container">

            <div class="row">
                <div class="col-md-6">
                    <h2>Evalua tu <strong>Conocimiento</strong></h2>
                    <p class="lead" style="text-align: justify">Independientemente de lo fiel que haya sido tu calendario de estudio, es normal que a medida que se aproximan los exámenes te sientas inseguro sobre tu nivel de conocimiento. Te asaltarán dudas sobre si has estudiado lo suficiente, en qué materias flojeas, qué posibilidades tienes de aprobar el examen, etc.</p>
                    <p>Una fantástica manera de superar esta ansiedad antes del examen es realizar tests para poner a prueba tu conocimiento. Estos tests son una suerte de simulacros de exámenes que te permiten evaluar de una manera más certera cómo de preparado estás para el examen..</p>
                </div>

                <div class="col-md-6 text-center">
                    <img class="img-responsive animate_fade_in" src="Content/Image/MasterPage/desktop_lusor.png" alt="" />
                </div>
            </div>

            <div class="row text-center countTo">
                <div class="col-md-3 col-sm-6">
                    <span class="boxed radius3">
                        <strong class="styleColor" data-to="5">5</strong>
                        <label>Univesidades</label>
                    </span>
                </div>

                <div class="col-md-3 col-sm-6">
                    <span class="boxed radius3">
                        <strong class="styleColor" data-to="3">3</strong>
                        <label>Escuelas Profesionales </label>
                    </span>
                </div>

                <div class="col-md-3 col-sm-6">
                    <span class="boxed radius3">
                        <strong class="styleColor" data-to="80">80</strong>
                        <label>Carreras Profesionales</label>
                    </span>
                </div>

                <div class="col-md-3 col-sm-6">
                    <span class="boxed radius3">
                        <strong class="styleColor" data-to="1000">+1000</strong>
                        <label>Cuestionarios</label>
                    </span>
                </div>
            </div>

        </div>
    </section>
    <!-- /PREMIUM -->




    <!-- CAROUSEL -->
    <section class="container">
        <div class="container">

            <div class="row">

                <div class="col-md-6">

                    <h2>La Mejor Manera de Simular tus Exámenes</h2>
                    <p style="text-align: justify">Si andas buscando un simulador de exámenes online, Lusor es perfecto para ti. Úsalo para repasar lo aprendido o como un simulador de exámenes para poner a prueba tu conocimiento antes del día del examen o cuando lo necesites.</p>
                    <p style="text-align: justify">Recuerda que simular los exámenes también es clave para familiarizarte con el formato del examen. Especialmente cuando se trata de exámenes tipo test, que requieren del uso de técnicas específicas para mejorar tu rendimiento.</p>
                    <p style="text-align: justify">Además de ayudarte a practicar para cada tipo de examen, tras realizar cada test obtendrás un resumen de tus resultados. De esta manera facilitamos tu evaluación sobre el conocimiento adquirido. Usa estos resultados para analizar qué áreas o materias requieren un repaso más amplio y ajusta tu calendario de estudio en consecuencia.</p>

                </div>

                <!-- carousel - brands -->
                <div class="col-md-6">
                    <div class="img-responsive animate_fade_in">
                        <div>
                            <img alt="" class="img-responsive" src="Content/Image/Site/img_11.png">
                        </div>
                    </div>
                </div>
                <!-- /carousel - brands -->


                <div class="divider">
                    <i class="fa fa-leaf"></i>
                </div>
                <!-- /divider -->

                <div class="row">

                    <!-- carousel -->
                    <div class="owl-carousel" data-plugin-options='{"items": 4, "singleItem": false, "pagination": false, "autoPlay": true}'>
                        <div>
                            <img class="img-responsive" src="Content/Image/Site/Brands/1.jpg" alt="">
                        </div>
                        <div>
                            <img class="img-responsive" src="Content/Image/Site/Brands/2.jpg" alt="">
                        </div>
                        <div>
                            <img class="img-responsive" src="Content/Image/Site/Brands/3.jpg" alt="">
                        </div>
                        <div>
                            <img class="img-responsive" src="Content/Image/Site/Brands/4.jpg" alt="">
                        </div>
                        <div>
                            <img class="img-responsive" src="Content/Image/Site/Brands/5.jpg" alt="">
                        </div>
                        <div>
                            <img class="img-responsive" src="Content/Image/Site/Brands/6.jpg" alt="">
                        </div>
                        <div>
                            <img class="img-responsive" src="Content/Image/Site/Brands/7.jpg" alt="">
                        </div>
                        <div>
                            <img class="img-responsive" src="Content/Image/Site/Brands/8.jpg" alt="">
                        </div>
                    </div>
                    <!-- /carousel -->

                </div>

            </div>
        </div>
    </section>
    <!-- /CAROUSEL -->

</asp:Content>
