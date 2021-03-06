<%-- 
    Document   : ProgramFechas
    Created on : 04-dic-2016, 16:17:33
    Author     : AMADOR
--%>

<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <!--<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">-->

        <title>.:RRHH:.</title>
        <meta name="description" content="">
        <meta name="author" content="">

        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

        <!-- Basic Styles -->
        <link rel="stylesheet" type="text/css" media="screen" href="resources/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" media="screen" href="resources/css/font-awesome.min.css">

        <!-- SmartAdmin Styles : Caution! DO NOT change the order -->
        <link rel="stylesheet" type="text/css" media="screen" href="resources/css/smartadmin-production-plugins.min.css">
        <link rel="stylesheet" type="text/css" media="screen" href="resources/css/smartadmin-production.min.css">
        <link rel="stylesheet" type="text/css" media="screen" href="resources/css/smartadmin-skins.min.css">

        <!-- SmartAdmin RTL Support -->
        <link rel="stylesheet" type="text/css" media="screen" href="resources/css/smartadmin-rtl.min.css"> 

        <!-- We recommend you use "your_style.css" to override SmartAdmin
             specific styles this will also ensure you retrain your customization with each SmartAdmin update.
        <link rel="stylesheet" type="text/css" media="screen" href="css/your_style.css"> -->

        <!-- Demo purpose only: goes with demo.js, you can delete this css when designing your own WebApp -->
        <link rel="stylesheet" type="text/css" media="screen" href="resources/css/demo.min.css">

        <!-- FAVICONS -->
        <link rel="shortcut icon" href="img/favicon/favicon.ico" type="image/x-icon">
        <link rel="icon" href="img/favicon/favicon.ico" type="image/x-icon">

        <!-- GOOGLE FONT -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,300,400,700">

        <!-- Specifying a Webpage Icon for Web Clip 
                 Ref: https://developer.apple.com/library/ios/documentation/AppleApplications/Reference/SafariWebContent/ConfiguringWebApplications/ConfiguringWebApplications.html -->
        <link rel="apple-touch-icon" href="img/splash/sptouch-icon-iphone.png">
        <link rel="apple-touch-icon" sizes="76x76" href="img/splash/touch-icon-ipad.png">
        <link rel="apple-touch-icon" sizes="120x120" href="img/splash/touch-icon-iphone-retina.png">
        <link rel="apple-touch-icon" sizes="152x152" href="img/splash/touch-icon-ipad-retina.png">

        <!-- iOS web-app metas : hides Safari UI Components and Changes Status Bar Appearance -->
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <link href="resources/daterangepicker/daterangepicker.css" rel="stylesheet" type="text/css"/>
        <!-- Startup image for web apps -->

        <link rel="apple-touch-startup-image" href="img/splash/ipad-landscape.png" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:landscape)">
        <link rel="apple-touch-startup-image" href="img/splash/ipad-portrait.png" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:portrait)">
        <link rel="apple-touch-startup-image" href="img/splash/iphone.png" media="screen and (max-device-width: 320px)">

    </head>

    <body>
        <article class="col-sm-6 col-md-6 col-lg-3"></article>
        <!-- widget grid -->
        <div class="row">

            <!-- NEW WIDGET START -->
            <article class="col-sm-12 col-md-12 col-lg-12">

                <!-- Widget ID (each widget will need unique ID)-->
                <div class="jarviswidget jarviswidget-color-darken" id="wid-id-0" data-widget-editbutton="false" data-widget-deletebutton="false">
                    <!-- widget options:
                    usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">

                    data-widget-colorbutton="false"
                    data-widget-editbutton="false"
                    data-widget-togglebutton="false"
                    data-widget-deletebutton="false"
                    data-widget-fullscreenbutton="false"
                    data-widget-custombutton="false"
                    data-widget-collapsed="true"
                    data-widget-sortable="false"

                    -->

                    <header>
                        <span class="widget-icon"> <i class="fa fa-check"></i> </span>
                        <h2>Programaci�n de fechas</h2> 

                    </header>

                    <!-- widget div-->
                    <div>

                        <!-- widget edit box -->
                        <div class="jarviswidget-editbox">
                            <!-- This area used as dropdown edit box -->

                        </div>
                        <!-- end widget edit box -->

                        <!-- widget content -->
                        <div class="widget-body no-padding">
                            <form class="smart-form">
                                <header>
                                    Programacion de vacaciones  - Datos del trabajador
                                </header>
                                <c:forEach items="${lista}" var="datos"> 
                                    <fieldset>
                                        <div class="row">
                                            <section class="col col-6">
                                                <label>Nombres</label>
                                                <label class="input"><i class="icon-prepend fa fa-user"></i>
                                                    <input type="text" name="fname" value="<c:out value="${datos.nombres}"/>" id="fname" disabled="disabled">
                                                </label>
                                            </section>
                                            <section class="col col-6">
                                                <label>Apellidos</label>
                                                <label class="input"><i class="icon-prepend fa fa-user"></i>
                                                    <input type="text" name="lname" value="<c:out value="${datos.apellidos}"/>" id="lname" disabled="disabled">
                                                </label>
                                            </section>
                                        </div>
                                        <div class="row">
                                            <section class="col col-6">
                                                <label>Correo</label>
                                                <label class="input"> <i class="icon-prepend fa fa-envelope-o"></i>
                                                    <input type="email" name="email" value='<c:out value="${datos.correo}"/>' disabled="disabled">
                                                </label>
                                            </section>
                                            <section class="col col-6">
                                                <label>Fecha de nacimiento</label>
                                                <label class="input"><i class="icon-prepend fa fa-home"></i>
                                                    <input type="text" name="fecha_nac" id="fecha_doc" disabled value="<c:out value="${datos.fecha_nac}"/>">
                                                </label>
                                            </section>
                                        </div>
                                        <div class="row">
                                            <section class="col col-4">
                                                <label>Sexo</label>
                                                <label class="input"> <i class="icon-prepend fa fa-envelope-o"></i>
                                                    <input type="email" name="sexo" value='<c:out value="${datos.sexo}"/>' disabled="disabled">
                                                </label>
                                            </section>
                                            <section class="col col-4">
                                                <label>Tipo de documento</label>
                                                <label class="input"><i class="icon-prepend fa fa-home"></i>
                                                    <input type="text" name="tip_doc" id="tip_doc" disabled value="<c:out value="${datos.tipo_doc}"/>">
                                                </label>
                                            </section>
                                            <section class="col col-4">
                                                <label>N�mero de documento</label>
                                                <label class="input"><i class="icon-prepend fa fa-home"></i>
                                                    <input type="text" name="num_doc" id="num_doc" disabled value="<c:out value="${datos.num_doc}"/>">
                                                </label>
                                            </section>
                                        </div>
                                        <div class="row">
                                            <div class="col col-12 text-center">
                                                <h3><label>Seleccionar rango de d�as a solicitar:</label></h3>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col col-4"></div>
                                            <section class="col col-4 ">
                                                <div class="form-group">
                                                    <label>Rango</label> 
                                                    <label class="input"><i class="icon-prepend fa fa-calendar  "></i>
                                                        <input type="text" name="fechas" class="form-control pull-right fa-lg fa-fw" id="range">
                                                    </label> 
                                                </div>
                                            </section>
                                            <div class="col col-4">
                                                <a href="javascript:void(0);" class="btn btn-primary btn-circle btn-lg"><i class="glyphicon glyphicon-plus"></i></a>
                                            </div>
                                        </div>
                                    </fieldset>
                                    <footer>
                                        <input type="hidden" name="opc"   value="REGISTRAR CONTRATO">
                                        <button id="submitbtn" type="button" class="btn btn-labeled btn-success">
                                            Registrar
                                        </button>
                                        <button type="button" id="cancelbtn" class="btn btn-labeled btn-danger">
                                            Cancelar
                                        </button>
                                    </footer>
                                </c:forEach>
                            </form>
                        </div>
                    </div>
                </div>
            </article>
        </div>
        <script src="resources/jQuery/jquery-2.2.3.min.js"></script>
        <script src="resources/daterangepicker/moment.min.js" type="text/javascript"></script>
        <script data-pace-options='{ "restartOnRequestAfter": true }' src="js/plugin/pace/pace.min.js"></script>

        <!-- Link to Google CDN's jQuery + jQueryUI; fall back to local -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script>
            if (!window.jQuery) {
                document.write('<script src="js/libs/jquery-2.1.1.min.js"><\/script>');
            }
        </script>

        <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
        <script>
            if (!window.jQuery.ui) {
                document.write('<script src="js/libs/jquery-ui-1.10.3.min.js"><\/script>');
            }
        </script>

        <!-- IMPORTANT: APP CONFIG -->
        <script src="resources/js/app.config.js"></script>

        <!-- JS TOUCH : include this plugin for mobile drag / drop touch events-->
        <script src="resources/js/plugin/jquery-touch/jquery.ui.touch-punch.min.js"></script> 

        <!-- BOOTSTRAP JS -->
        <script src="resources/js/bootstrap/bootstrap.min.js"></script>

        <!-- CUSTOM NOTIFICATION -->
        <script src="resources/js/notification/SmartNotification.min.js"></script>

        <!-- JARVIS WIDGETS -->
        <script src="resources/js/smartwidgets/jarvis.widget.min.js"></script>

        <!-- EASY PIE CHARTS -->
        <script src="resources/js/plugin/easy-pie-chart/jquery.easy-pie-chart.min.js"></script>

        <!-- SPARKLINES -->
        <script src="resources/js/plugin/sparkline/jquery.sparkline.min.js"></script>

        <!-- JQUERY VALIDATE -->
        <script src="resources/js/plugin/jquery-validate/jquery.validate.min.js"></script>

        <!-- JQUERY MASKED INPUT -->
        <script src="resources/js/plugin/masked-input/jquery.maskedinput.min.js"></script>

        <!-- JQUERY SELECT2 INPUT -->
        <script src="resources/js/plugin/select2/select2.min.js"></script>

        <!-- JQUERY UI + Bootstrap Slider -->
        <script src="resources/js/plugin/bootstrap-slider/bootstrap-slider.min.js"></script>

        <!-- browser msie issue fix -->
        <script src="resources/js/plugin/msie-fix/jquery.mb.browser.min.js"></script>

        <!-- FastClick: For mobile devices -->
        <script src="resources/js/plugin/fastclick/fastclick.min.js"></script>

        <!--[if IE 8]>

        <h1>Your browser is out of date, please update your browser by going to www.microsoft.com/download</h1>

        <![endif]-->

        <!-- Demo purpose only -->
        <script src="resources/js/demo.min.js"></script>

        <!-- MAIN APP JS FILE -->
        <script src="resources/js/app.min.js"></script>

        <!-- ENHANCEMENT PLUGINS : NOT A REQUIREMENT -->
        <!-- Voice command : plugin -->
        <script src="resources/js/speech/voicecommand.min.js"></script>

        <!-- SmartChat UI : plugin -->
        <script src="resources/js/smart-chat-ui/smart.chat.ui.min.js"></script>
        <script src="resources/js/smart-chat-ui/smart.chat.manager.min.js"></script>

        <!-- PAGE RELATED PLUGIN(S) -->
        <script src="resources/js/plugin/bootstrap-wizard/jquery.bootstrap.wizard.min.js"></script>
        <script src="resources/js/plugin/fuelux/wizard/wizard.min.js"></script>
        <script src="resources/daterangepicker/daterangepicker.js" type="text/javascript"></script>




        <script type="text/javascript">

            // DO NOT REMOVE : GLOBAL FUNCTIONS!

            $(document).ready(function () {

                pageSetUp();
                //Date range picker
                $('#range').daterangepicker({
                    startDate: moment(),
                    separator: ' hasta ',
                    locale: {
                        applyLabel: 'Enviar',
                        fromLabel: 'Desde',
                        toLabel: 'Hasta',
                        customRangeLabel: 'Rango Personalizado',
                        daysOfWeek: ['Do', 'Lu', 'Ma', 'Mi', 'Ju', 'Vi', 'Sa'],
                        monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
                        firstDay: 1,
                        format: 'YYYY/MM/DD'
                    }
                });
                //Date picker
                $('#datepicker').datepicker({
                    autoclose: true
                });





                //Bootstrap Wizard Validations

                var $validator = $("#wizard-1").validate({
                    rules: {
                        email: {
                            required: true,
                            email: "Your email address must be in the format of name@domain.com"
                        },
                        fname: {
                            required: true
                        },
                        lname: {
                            required: true
                        },
                        country: {
                            required: true
                        },
                        city: {
                            required: true
                        },
                        postal: {
                            required: true,
                            minlength: 4
                        },
                        wphone: {
                            required: true,
                            minlength: 10
                        },
                        hphone: {
                            required: true,
                            minlength: 10
                        }
                    },
                    messages: {
                        fname: "Please specify your First name",
                        lname: "Please specify your Last name",
                        email: {
                            required: "We need your email address to contact you",
                            email: "Your email address must be in the format of name@domain.com"
                        }
                    },
                    highlight: function (element) {
                        $(element).closest('.form-group').removeClass('has-success').addClass('has-error');
                    },
                    unhighlight: function (element) {
                        $(element).closest('.form-group').removeClass('has-error').addClass('has-success');
                    },
                    errorElement: 'span',
                    errorClass: 'help-block',
                    errorPlacement: function (error, element) {
                        if (element.parent('.input-group').length) {
                            error.insertAfter(element.parent());
                        } else {
                            error.insertAfter(element);
                        }
                    }
                });

                $('#bootstrap-wizard-1').bootstrapWizard({
                    'tabClass': 'form-wizard',
                    'onNext': function (tab, navigation, index) {
                        var $valid = $("#wizard-1").valid();
                        if (!$valid) {
                            $validator.focusInvalid();
                            return false;
                        } else {
                            $('#bootstrap-wizard-1').find('.form-wizard').children('li').eq(index - 1).addClass(
                                    'complete');
                            $('#bootstrap-wizard-1').find('.form-wizard').children('li').eq(index - 1).find('.step')
                                    .html('<i class="fa fa-check"></i>');
                        }
                    }
                });


                // fuelux wizard
                var wizard = $('.wizard').wizard();

                wizard.on('finished', function (e, data) {
                    //$("#fuelux-wizard").submit();
                    //console.log("submitted!");
                    $.smallBox({
                        title: "Congratulations! Your form was submitted",
                        content: "<i class='fa fa-clock-o'></i> <i>1 seconds ago...</i>",
                        color: "#5F895F",
                        iconSmall: "fa fa-check bounce animated",
                        timeout: 4000
                    });

                });


            });

        </script>

        <!-- Your GOOGLE ANALYTICS CODE Below -->
        <script type="text/javascript">
            var _gaq = _gaq || [];
            _gaq.push(['_setAccount', 'UA-XXXXXXXX-X']);
            _gaq.push(['_trackPageview']);

            (function () {
                var ga = document.createElement('script');
                ga.type = 'text/javascript';
                ga.async = true;
                ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                var s = document.getElementsByTagName('script')[0];
                s.parentNode.insertBefore(ga, s);
            })();

        </script>



    </body>

</html>
