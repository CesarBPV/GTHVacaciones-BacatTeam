<%-- 
    Document   : ProgramFechas
    Created on : 04-dic-2016, 16:17:33
    Author     : AMADOR
--%>

<!DOCTYPE html>
<html lang="en-us">
    <head>
        <meta charset="utf-8">
        <!--<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">-->

        <title> SmartAdmin </title>
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
                        <h2>Programación de fechas</h2>

                    </header>

                    <!-- widget div-->
                    <div>

                        <!-- widget edit box -->
                        <div class="jarviswidget-editbox">
                            <!-- This area used as dropdown edit box -->

                        </div>
                        <!-- end widget edit box -->

                        <!-- widget content -->
                        <div class="widget-body">

                            <div class="row">
                                <form id="wizard-1" novalidate="novalidate">
                                    <div id="bootstrap-wizard-1" class="col-sm-12">
                                        <div class="tab-content">
                                            <div class="tab-pane active" id="tab1">
                                                <br>
                                                <h3>Programacion de vacaciones  - Datos del trabajador</h3>

                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <label>Nombres</label>
                                                            <div class="input-group">
                                                                <span class="input-group-addon"><i class="fa fa-user fa-lg fa-fw"></i></span>
                                                                <input class="form-control input-lg" placeholder="Nombres" type="text" name="fname" id="fname">

                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <label>Apellidos</label>
                                                            <div class="input-group">
                                                                <span class="input-group-addon"><i class="fa fa-user fa-lg fa-fw"></i></span>
                                                                <input class="form-control input-lg" placeholder="Apellidos" type="text" name="lname" id="lname">

                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <label>Correo</label>
                                                            <div class="input-group">
                                                                <span class="input-group-addon"><i class="fa fa-envelope fa-lg fa-fw"></i></span>
                                                                <input class="form-control input-lg" placeholder="Correo" type="text" name="email" id="email">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <label>Dirección</label>
                                                            <div class="input-group">
                                                                <span class="input-group-addon"><i class="fa fa-user fa-lg fa-fw"></i></span>
                                                                <input class="form-control input-lg" placeholder="Dirección" type="text" name="lname" id="lname">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class='col-md-3'>
                                                    </div>
                                                    <div class="col-sm-12">
                                                        <h3><label>Seleccionar rango de días a solicitar:</label></h3>
                                                    </div>
                                                    <div class="col-sm-6">

                                                        <div class="form-group">
                                                            <label>Desde</label>
                                                            <div class="input-group">
                                                                <input class="form-control" id="from" type="text" placeholder="From">
                                                                <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                                            </div>
                                                        </div>

                                                    </div>
                                                    <div class="col-sm-6">

                                                        <div class="form-group">
                                                            <label>Hasta</label>
                                                            <div class="input-group">
                                                                <input class="form-control" id="to" type="text" placeholder="Select a date">
                                                                <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div> 


                                            </div>
                                           
                                           
                                            

                                            <div class="form-actions">
                                                <div class="row">
                                                    <div class="col-sm-12">
                                                        <ul class="pager wizard no-margin">
                                                            <!--<li class="previous first disabled">
                                                            <a href="javascript:void(0);" class="btn btn-lg btn-default"> First </a>
                                                            </li>-->
                                                            <li class="previous disabled">
                                                                <a href="javascript:void(0);" class="btn btn-lg btn-default"> Previous </a>
                                                            </li>
                                                            <!--<li class="next last">
                                                            <a href="javascript:void(0);" class="btn btn-lg btn-primary"> Last </a>
                                                            </li>-->
                                                            <li class="next">
                                                                <a href="javascript:void(0);" class="btn btn-lg txt-color-darken"> Next </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </form>
                            </div>

                        </div>
                    </div>
                </div>
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


                <script type="text/javascript">

                    // DO NOT REMOVE : GLOBAL FUNCTIONS!

                    $(document).ready(function () {

                        pageSetUp();
                        
                        $("#to").datepicker({
                            defaultDate: "+1w",
                            changeMonth: true,
                            numberOfMonths: 3,
                            prevText: '<i class="fa fa-chevron-left"></i>',
                            nextText: '<i class="fa fa-chevron-right"></i>',
                            onClose: function (selectedDate) {
                                $("#from").datepicker("option", "maxDate", selectedDate);
                            }
                        });
                        $("#from").datepicker({
                            defaultDate: "+1w",
                            changeMonth: true,
                            numberOfMonths: 3,
                            prevText: '<i class="fa fa-chevron-left"></i>',
                            nextText: '<i class="fa fa-chevron-right"></i>',
                            onClose: function (selectedDate) {
                                $("#to").datepicker("option", "minDate", selectedDate);
                            }

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
