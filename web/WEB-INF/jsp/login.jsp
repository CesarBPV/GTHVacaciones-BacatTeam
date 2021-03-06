
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es" id="extr-page">
    <head>
        <meta charset="utf-8">
        <title>.:RRHH:.</title>
        <meta name="description" content="">
        <meta name="author" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

        <!-- #CSS Links -->
        <!-- Basic Styles -->
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value="resources/css/bootstrap.min.css"/>">
        <link rel="stylesheet" type="text/css" media="screen" href="resources/css/font-awesome.min.css">

        <!-- SmartAdmin Styles : Caution! DO NOT change the order -->
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value="resources/css/smartadmin-production-plugins.min.css"/>">
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value="resources/css/smartadmin-production.min.css"/>">
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value="resources/css/smartadmin-skins.min.css"/>">

        <!-- SmartAdmin RTL Support -->
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value="resources/css/smartadmin-rtl.min.css"/>"> 

        <!-- We recommend you use "your_style.css" to override SmartAdmin
             specific styles this will also ensure you retrain your customization with each SmartAdmin update.
        <link rel="stylesheet" type="text/css" media="screen" href="css/your_style.css"> -->

        <!-- Demo purpose only: goes with demo.js, you can delete this css when designing your own WebApp -->
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value="resources/css/demo.min.css"/>">

        <!-- #FAVICONS -->
        <link rel="shortcut icon" href="<c:url value="resources/img/favicon/favicon.ico"/>" type="image/x-icon">
        <link rel="icon" href="<c:url value="resources/img/favicon/favicon.ico"/>" type="image/x-icon">

        <!-- #GOOGLE FONT -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,300,400,700">

        <!-- #APP SCREEN / ICONS -->
        <!-- Specifying a Webpage Icon for Web Clip 
                 Ref: https://developer.apple.com/library/ios/documentation/AppleApplications/Reference/SafariWebContent/ConfiguringWebApplications/ConfiguringWebApplications.html -->
        <link rel="apple-touch-icon" href="<c:url value="resources/img/splash/sptouch-icon-iphone.png"/>">
        <link rel="apple-touch-icon" sizes="76x76" href="<c:url value="resources/img/splash/touch-icon-ipad.png"/>">
        <link rel="apple-touch-icon" sizes="120x120" href="<c:url value="resources/img/splash/touch-icon-iphone-retina.png"/>">
        <link rel="apple-touch-icon" sizes="152x152" href="<c:url value="resources/img/splash/touch-icon-ipad-retina.png"/>">

        <!-- iOS web-app metas : hides Safari UI Components and Changes Status Bar Appearance -->
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">

        <!-- Startup image for web apps -->
        <link rel="apple-touch-startup-image" href="<c:url value="resources/img/splash/ipad-landscape.png"/>" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:landscape)">
        <link rel="apple-touch-startup-image" href="<c:url value="resources/img/splash/ipad-portrait.png"/>" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:portrait)">
        <link rel="apple-touch-startup-image" href="<c:url value="resources/img/splash/iphone.png"/>" media="screen and (max-device-width: 320px)">

    </head>

    <body class="animated fadeInDown">

        <header id="header">

            <div id="logo-group">
                <span id="logo"> <img src="<c:url value="resources/img/logoRRHH.png"/>" style=" position: absolute;top: 8px; width:100px; height:36px " alt="Talento Humano"> </span>
            </div>

            <span id="extr-page-header-space"> <span class="hidden-mobile hiddex-xs">�No tiene una cuenta?</span> <a href="register" class="btn btn-danger">Crear una Cuenta</a> </span>

        </header>

        <div id="main" role="main">

            <!-- MAIN CONTENT -->
            <div id="content" class="container">

                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-7 col-lg-8 hidden-xs hidden-sm">
                        <h1 class="txt-color-red login-header-big">BACAT Team</h1>
                        <div class="hero">

                            <div class="pull-left login-desc-box-l">
                                <h4 class="paragraph-header">�Qu� es Bacat? Bacat es el Grupo desarrollador de esta seccion del Programa que se encarga del �rea de Vacaciones.</h4>
                                <div class="login-app-icons">
                                    <a href="javascript:void(0);" class="btn btn-danger btn-sm">Miembros</a>
                                    <a href="javascript:void(0);" class="btn btn-danger btn-sm">Boton de p�nico</a>
                                </div>
                            </div>

                            <img src="<c:url value="resources/img/demo/admin.png"/>" class="pull-right display-image" alt="" style="width:350px">

                        </div>

                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                <h5 class="about-heading">Caso que aprobemos:</h5>
                                <p>
                                    Lanzaremos a Cesar a la piscina de la UPeU con todo y mochila :3
                                </p>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                <h5 class="about-heading">Caso nos Jalemos</h5>
                                <p>
                                    Presione el Boton de panico todo lo que quiera, pero nada pasara usted ya Desaprobo el curso y la Frego como todo en su vida :'v 
                                </p>
                            </div>
                        </div>

                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-5 col-lg-4">
                        <div class="well no-padding">
                            <form method="post" action="menu" id="login-form" class="smart-form client-form">
                                <header>
                                    Ingrese a su Cuenta
                                </header>

                                <fieldset>

                                    <section>
                                        <label class="label">Usuario</label>
                                        <label class="input"> <i class="icon-append fa fa-user"></i>
                                            <input type="text" name="username">
                                            <b class="tooltip tooltip-top-right"><i class="fa fa-user txt-color-teal"></i> Por favor ingrese su nombre de usuario</b></label>
                                    </section>

                                    <section>
                                        <label class="label">Contrase�a</label>
                                        <label class="input"> <i class="icon-append fa fa-lock"></i>
                                            <input type="password" name="password">
                                            <b class="tooltip tooltip-top-right"><i class="fa fa-lock txt-color-teal"></i> Ingrese su contrase�a</b> </label>
                                        <div class="note">
                                            <a href="forgotpassword.html">Olvido su contrase�a</a>
                                        </div>
                                    </section>

                                    <section>
                                        <label class="checkbox">
                                            <input type="checkbox" name="remember" checked="">
                                            <i></i>Mantener la Sesi�n</label>
                                    </section>
                                </fieldset>
                                <footer>
                                    <button type="submit" class="btn btn-primary">
                                        Ingresar
                                    </button>
                                </footer>
                            </form>

                        </div>

                        <h5 class="text-center"> - o Ingrese usando... -</h5>

                        <ul class="list-inline text-center">
                            <li>
                                <a href="javascript:void(0);" class="btn btn-primary btn-circle"><i class="fa fa-facebook"></i></a>
                            </li>
                            <li>
                                <a href="javascript:void(0);" class="btn btn-info btn-circle"><i class="fa fa-twitter"></i></a>
                            </li>
                            <li>
                                <a href="javascript:void(0);" class="btn btn-warning btn-circle"><i class="fa fa-linkedin"></i></a>
                            </li>
                        </ul>

                    </div>
                </div>
            </div>

        </div>

        <!--================================================== -->	

        <!-- PACE LOADER - turn this on if you want ajax loading to show (caution: uses lots of memory on iDevices)-->
        <script src="<c:url value="resources/js/plugin/pace/pace.min.js"/>"></script>

        <!-- Link to Google CDN's jQuery + jQueryUI; fall back to local -->
        <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script> if (!window.jQuery) {
                document.write('<script src="js/libs/jquery-2.1.1.min.js"><\/script>');
            }</script>

        <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
        <script> if (!window.jQuery.ui) {
                document.write('<script src="js/libs/jquery-ui-1.10.3.min.js"><\/script>');
            }</script>

        <!-- IMPORTANT: APP CONFIG -->
        <script src="<c:url value="resources/js/app.config.js"/>"></script>

        <!-- JS TOUCH : include this plugin for mobile drag / drop touch events 		
        <script src="js/plugin/jquery-touch/jquery.ui.touch-punch.min.js"></script> -->

        <!-- BOOTSTRAP JS -->		
        <script src="<c:url value="resources/js/bootstrap/bootstrap.min.js"/>"></script>

        <!-- JQUERY VALIDATE -->
        <script src="<c:url value="resources/js/plugin/jquery-validate/jquery.validate.min.js"/>"></script>

        <!-- JQUERY MASKED INPUT -->
        <script src="<c:url value="resources/js/plugin/masked-input/jquery.maskedinput.min.js"/>"></script>

        <!--[if IE 8]>
                
                <h1>Your browser is out of date, please update your browser by going to www.microsoft.com/download</h1>
                
        <![endif]-->

        <!-- MAIN APP JS FILE -->
        <script src="<c:url value="resources/js/app.min.js"/>"></script>

        <script type="text/javascript">
            runAllForms();

            $(function () {
                // Validation
                $("#login-form").validate({
                    // Rules for form validation
                    rules: {
                        username: {
                            required: true
                        },
                        password: {
                            required: true,
                            minlength: 3,
                            maxlength: 20
                        }
                    },
                    // Messages for form validation
                    messages: {
                        username: {
                            required: 'Por favor ingrese su nombre de usuario'
                        },
                        password: {
                            required: 'Porfavor ingrese su contrase�a'
                        }
                    },
                    // Do not change code below
                    errorPlacement: function (error, element) {
                        error.insertAfter(element.parent());
                    }
                });
            });
        </script>

    </body>
</html>
