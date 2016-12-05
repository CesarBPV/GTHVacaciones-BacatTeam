<%@page import="com.sun.xml.internal.ws.api.message.saaj.SAAJFactory"%>
<%@page import="com.model.trabajador"%>
<%@page import="com.dao.trabajadorDAO"%>
<%@page import="com.interfaces.ImpTrabajadorDao"%>
<%@page import="com.model.usuario"%>
<%@page import="com.dao.usuarioDAO"%>
<%@page import="com.interfaces.ImpUsuarioDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%
    HttpSession sesion = request.getSession();
    if (sesion.getAttribute("idusuario") == null) {
        try {
            response.sendRedirect("login");
        } catch (Exception ex) {
            System.out.println("Error: " + ex);
        }
    } else {
        ImpUsuarioDao udao = new usuarioDAO();
        ImpTrabajadorDao tdao = new trabajadorDAO();
        usuario u = udao.Read((String) sesion.getAttribute("idusuario")).get(0);
        System.out.println("USUARIO: " + u.getIdusuario());
        trabajador t = tdao.Read(u.getIdtrabajador()).get(0);
        String nombres = t.getNombres() + " " + t.getApellidos();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestión de Vacaciones</title>
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

        <!-- SmartAdmin RTL Support  -->
        <link rel="stylesheet" type="text/css" media="screen" href="resources/css/smartadmin-rtl.min.css">

        <!-- We recommend you use "your_style.css" to override SmartAdmin
             specific styles this will also ensure you retrain your customization with each SmartAdmin update.
        <link rel="stylesheet" type="text/css" media="screen" href="css/your_style.css"> -->

        <!-- FAVICONS -->
        <link rel="shortcut icon" href="resources/img/favicon/favicon.ico" type="image/x-icon">
        <link rel="icon" href="resources/img/favicon/favicon.ico" type="image/x-icon">

        <!-- GOOGLE FONT -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,300,400,700">

        <!-- Specifying a Webpage Icon for Web Clip 
                 Ref: https://developer.apple.com/library/ios/documentation/AppleApplications/Reference/SafariWebContent/ConfiguringWebApplications/ConfiguringWebApplications.html -->
        <link rel="apple-touch-icon" href="resources/img/splash/sptouch-icon-iphone.png">
        <link rel="apple-touch-icon" sizes="76x76" href="resources/img/splash/touch-icon-ipad.png">
        <link rel="apple-touch-icon" sizes="120x120" href="resources/img/splash/touch-icon-iphone-retina.png">
        <link rel="apple-touch-icon" sizes="152x152" href="resources/img/splash/touch-icon-ipad-retina.png">

        <!-- iOS web-app metas : hides Safari UI Components and Changes Status Bar Appearance -->
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">

        <!-- Startup image for web apps -->
        <link rel="apple-touch-startup-image" href="resources/img/splash/ipad-landscape.png" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:landscape)">
        <link rel="apple-touch-startup-image" href="resources/img/splash/ipad-portrait.png" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:portrait)">
        <link rel="apple-touch-startup-image" href="resources/img/splash/iphone.png" media="screen and (max-device-width: 320px)">
    </head>

    <body>
        <!-- HEADER -->
    <header id="header">
        <div id="logo-group">

            <!-- PLACE YOUR LOGO HERE -->
            <span id="logo"> <img src="resources/img/logoRRHH.png" style=" position: absolute;top: 8px; width:100px; height:36px " alt="Talento Humano"> </span>
            <!-- END LOGO PLACEHOLDER -->
            <%
                if (false) {
            %>
            <!-- Note: The activity badge color changes when clicked and resets the number to 0
            Suggestion: You may want to set a flag when this happens to tick off all checked messages / notifications -->
            <span id="activity" class="activity-dropdown"> <i class="fa fa-user"></i> <b class="badge"> 21 </b> </span>

            <!-- AJAX-DROPDOWN : control this dropdown height, look and feel from the LESS variable file -->
            <div class="ajax-dropdown">

                <!-- the ID links are fetched via AJAX to the ajax container "ajax-notifications" -->
                <div class="btn-group btn-group-justified" data-toggle="buttons">
                    <label class="btn btn-default">
                        <input type="radio" name="activity" id="resources/ajax/notify/mail.html">
                        Msgs (14) </label>
                    <label class="btn btn-default">
                        <input type="radio" name="activity" id="resources/ajax/notify/notifications.html">
                        notify (3) </label>
                    <label class="btn btn-default">
                        <input type="radio" name="activity" id="resources/ajax/notify/tasks.html">
                        Tasks (4) </label>
                </div>

                <!-- notification content -->
                <div class="ajax-notifications custom-scroll">

                    <div class="alert alert-transparent">
                        <h4>Click a button to show messages here</h4>
                        This blank page message helps protect your privacy, or you can show the first message here automatically.
                    </div>

                    <i class="fa fa-lock fa-4x fa-border"></i>

                </div>
                <!-- end notification content -->

                <!-- footer: refresh area -->
                <span> Last updated on: 12/12/2013 9:43AM
                    <button type="button" data-loading-text="<i class='fa fa-refresh fa-spin'></i> Loading..." class="btn btn-xs btn-default pull-right">
                        <i class="fa fa-refresh"></i>
                    </button> 
                </span>
                <!-- end footer -->

            </div>
            <!-- END AJAX-DROPDOWN -->
            <%}%>
        </div>
        <%
            if (false) {
        %>
        <!-- projects dropdown -->
        <div class="project-context hidden-xs">

            <span class="label">Projects:</span>
            <span class="project-selector dropdown-toggle" data-toggle="dropdown">Recent projects <i class="fa fa-angle-down"></i></span>

            <!-- Suggestion: populate this list with fetch and push technique -->
            <ul class="dropdown-menu">
                <li>
                    <a href="javascript:void(0);">Online e-merchant management system - attaching integration with the iOS</a>
                </li>
                <li>
                    <a href="javascript:void(0);">Notes on pipeline upgradee</a>
                </li>
                <li>
                    <a href="javascript:void(0);">Assesment Report for merchant account</a>
                </li>
                <li class="divider"></li>
                <li>
                    <a href="javascript:void(0);"><i class="fa fa-power-off"></i> Clear</a>
                </li>
            </ul>
            <!-- end dropdown-menu-->

        </div>
        <!-- end projects dropdown -->
        <%}%>
        <!-- pulled right: nav area -->
        <div class="pull-right">

            <!-- collapse menu button -->
            <div id="hide-menu" class="btn-header pull-right">
                <span> <a href="javascript:void(0);" data-action="toggleMenu" title="Collapse Menu"><i class="fa fa-reorder"></i></a> </span>
            </div>
            <!-- end collapse menu -->

            <!-- #MOBILE -->
            <!-- Top menu profile link : this shows only when top menu is active -->
            <ul id="mobile-profile-img" class="header-dropdown-list hidden-xs padding-5">
                <li class="">
                    <a href="#" class="dropdown-toggle no-margin userdropdown" data-toggle="dropdown"> 
                        <img src="resources/img/avatars/sunny.png" alt="John Doe" class="online" />  
                    </a>
                    <ul class="dropdown-menu pull-right">
                        <li>
                            <a href="javascript:void(0);" class="padding-10 padding-top-0 padding-bottom-0"><i class="fa fa-cog"></i> Setting</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="profile.html" class="padding-10 padding-top-0 padding-bottom-0"> <i class="fa fa-user"></i> <u>P</u>rofile</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="javascript:void(0);" class="padding-10 padding-top-0 padding-bottom-0" data-action="toggleShortcut"><i class="fa fa-arrow-down"></i> <u>S</u>hortcut</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="javascript:void(0);" class="padding-10 padding-top-0 padding-bottom-0" data-action="launchFullscreen"><i class="fa fa-arrows-alt"></i> Full <u>S</u>creen</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="login?opc=logout" class="padding-10 padding-top-5 padding-bottom-5" data-action="userLogout"><i class="fa fa-sign-out fa-lg"></i> <strong><u>L</u>ogout</strong></a>
                        </li>
                    </ul>
                </li>
            </ul>

            <!-- logout button -->
            <div id="logout" class="btn-header transparent pull-right">
                <span> <a href="login?opc=logout" title="Sign Out" data-action="userLogout" data-logout-msg="¿Está complemetamente seguro de cerrar sesión?"><i class="fa fa-sign-out"></i>
                        Salir</a> </span>
            </div>
            <!-- end logout button -->

            <!-- search mobile button (this is hidden till mobile view port) -->
            <div id="search-mobile" class="btn-header transparent pull-right">
                <span> <a href="javascript:void(0)" title="Search"><i class="fa fa-search"></i></a> </span>
            </div>
            <!-- end search mobile button -->

            <!-- input: search field -->
            <form action="search.html" class="header-search pull-right">
                <input id="search-fld"  type="text" name="param" placeholder="Buscar" data-autocomplete='[
                       "ActionScript",
                       "AppleScript",
                       "Asp",
                       "BASIC",
                       "C",
                       "C++",
                       "Clojure",
                       "COBOL",
                       "ColdFusion",
                       "Erlang",
                       "Fortran",
                       "Groovy",
                       "Haskell",
                       "Java",
                       "JavaScript",
                       "Lisp",
                       "Perl",
                       "PHP",
                       "Python",
                       "Ruby",
                       "Scala",
                       "Scheme"]'>
                <button type="submit">
                    <i class="fa fa-search"></i>
                </button>
                <a href="javascript:void(0);" id="cancel-search-js" title="Cancel Search"><i class="fa fa-times"></i></a>
            </form>
            <!-- end input: search field -->

            <!-- fullscreen button -->
            <div id="fullscreen" class="btn-header transparent pull-right">
                <span> <a href="javascript:void(0);" data-action="launchFullscreen" title="Full Screen"><i class="fa fa-arrows-alt"></i></a> </span>
            </div>
            <!-- end fullscreen button -->

            <!-- #Voice Command: Start Speech -->
            <div id="speech-btn" class="btn-header transparent pull-right hidden-sm hidden-xs">
                <div> 
                    <a href="javascript:void(0)" title="Voice Command" data-action="voiceCommand"><i class="fa fa-microphone"></i></a> 
                    <div class="popover bottom"><div class="arrow"></div>
                        <div class="popover-content">
                            <h4 class="vc-title">Voice command activated <br><small>Please speak clearly into the mic</small></h4>
                            <h4 class="vc-title-error text-center">
                                <i class="fa fa-microphone-slash"></i> Voice command failed
                                <br><small class="txt-color-red">Must <strong>"Allow"</strong> Microphone</small>
                                <br><small class="txt-color-red">Must have <strong>Internet Connection</strong></small>
                            </h4>
                            <a href="javascript:void(0);" class="btn btn-success" onclick="commands.help()">See Commands</a> 
                            <a href="javascript:void(0);" class="btn bg-color-purple txt-color-white" onclick="$('#speech-btn .popover').fadeOut(50);">Close Popup</a> 
                        </div>
                    </div>
                </div>
            </div>
            <!-- end voice command -->
            <%
                if (false) {
            %>
            <!-- multiple lang dropdown : find all flags in the flags page -->
            <ul class="header-dropdown-list hidden-xs">
                <li>
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <img src="img/blank.gif" class="flag flag-us" alt="United States"> <span> English (US) </span> <i class="fa fa-angle-down"></i> </a>
                    <ul class="dropdown-menu pull-right">
                        <li class="active">
                            <a href="javascript:void(0);"><img src="resources/img/blank.gif" class="flag flag-us" alt="United States"> English (US)</a>
                        </li>
                        <li>
                            <a href="javascript:void(0);"><img src="resources/img/blank.gif" class="flag flag-fr" alt="France"> Français</a>
                        </li>
                        <li>
                            <a href="javascript:void(0);"><img src="resources/img/blank.gif" class="flag flag-es" alt="Spanish"> Español</a>
                        </li>
                        <li>
                            <a href="javascript:void(0);"><img src="resources/img/blank.gif" class="flag flag-de" alt="German"> Deutsch</a>
                        </li>
                        <li>
                            <a href="javascript:void(0);"><img src="resources/img/blank.gif" class="flag flag-jp" alt="Japan"> 日本語</a>
                        </li>
                        <li>
                            <a href="javascript:void(0);"><img src="resources/img/blank.gif" class="flag flag-cn" alt="China"> 中文</a>
                        </li>	
                        <li>
                            <a href="javascript:void(0);"><img src="resources/img/blank.gif" class="flag flag-it" alt="Italy"> Italiano</a>
                        </li>	
                        <li>
                            <a href="javascript:void(0);"><img src="resources/img/blank.gif" class="flag flag-pt" alt="Portugal"> Portugal</a>
                        </li>
                        <li>
                            <a href="javascript:void(0);"><img src="resources/img/blank.gif" class="flag flag-ru" alt="Russia"> Русский язык</a>
                        </li>
                        <li>
                            <a href="javascript:void(0);"><img src="resources/img/blank.gif" class="flag flag-kr" alt="Korea"> 한국어</a>
                        </li>						

                    </ul>
                </li>
            </ul>
            <!-- end multiple lang -->
            <%}%>
        </div>
        <!-- end pulled right: nav area -->

    </header>
    <!-- END HEADER -->

    <!-- Left panel : Navigation area -->
    <!-- Note: This width of the aside area can be adjusted through LESS variables -->
    <aside id="left-panel">

        <!-- User info -->
        <div class="logininfo slideInRight fast animated">
            <div class="row">
                <div class="avatar-user col-md-3">
                    <input id="id_trabajador" type="hidden" value="<%out.println(sesion.getAttribute("idtrabajador"));%>" />
                    <input id="iuser" type="hidden" value="<%out.println(sesion.getAttribute("idusuario"));%>" />
                    <a href="javascript:void(0);" id="show-shortcut" >
                        <img id="foto_usuario" src="resources/img/avatars/4.png"  />
                    </a>  
                </div>
                <div class="col-md-9">
                    <div class="login-info text-right">
                        <span class="spanuser"> <%out.println((String) u.getUsuario()); %></span>  
                    </div>

                    <div class="login-info text-right">
                        <span ><%out.println(nombres.trim()); %> </span> 
                    </div>
                </div>
            </div>

        </div>


        <!-- end user info -->

        <!-- NAVIGATION : This navigation is also responsive-->
        <nav>
            <!-- 
            NOTE: Notice the gaps after each icon usage <i></i>..
            Please note that these links work a bit different than
            traditional href="" links. See documentation for details.
            -->

            <ul> 
                <li class="top-menu-invisible">
                    <a href="#"><i class="fa fa-lg fa-fw fa-cube txt-color-blue"></i> <span class="menu-item-parent">Programar Vacaciones</span></a>
                    <ul>
                        <li class="active">
                            <a href="proceso" title="Dashboard"><i class="fa fa-lg fa-fw fa-gear"></i> <span class="menu-item-parent">Proceso</span></a>
                        </li>
                        <li class="">
                            <a href="skins.html" title="Dashboard"><i class="fa fa-lg fa-fw fa-picture-o"></i> <span class="menu-item-parent">Prebuilt Skins</span></a>
                        </li>
                        <li>
                            <a href="applayout.html"><i class="fa fa-cube"></i> App Settings</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="inbox.html"><i class="fa fa-lg fa-fw fa-inbox"></i> <span class="menu-item-parent">Reprogramar Vacaciones</span> <span class="badge pull-right inbox-badge margin-right-13">14</span></a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-lg fa-fw fa-bar-chart-o"></i> <span class="menu-item-parent">Autorizar Vacaciones</span></a>
                    <ul>
                        <li>
                            <a href="flot.html">Flot Chart</a>
                        </li>
                        <li>
                            <a href="morris.html">Morris Charts</a>
                        </li>
                        <li>
                            <a href="sparkline-charts.html">Sparklines</a>
                        </li>
                        <li>
                            <a href="easypie-charts.html">EasyPieCharts</a>
                        </li>
                        <li>
                            <a href="dygraphs.html">Dygraphs</a>
                        </li>
                        <li>
                            <a href="chartjs.html">Chart.js</a>
                        </li>
                        <li>
                            <a href="hchartable.html">HighchartTable <span class="badge pull-right inbox-badge bg-color-yellow">new</span></a>
                        </li>
                    </ul>
                </li>
            </ul>
            
        </nav>


        <span class="minifyme" data-action="minifyMenu"> 
            <i class="fa fa-arrow-circle-left hit"></i> 
        </span>

    </aside>
    <!-- END NAVIGATION -->

    <!-- MAIN PANEL -->
		<div id="main" role="main">

			<!-- RIBBON -->
			<div id="ribbon">
				<!-- breadcrumb -->
				<ol class="breadcrumb">
					<li>Home</li><li>Dashboard</li>
				</ol>
				<!-- end breadcrumb -->

				<!-- You can also add more buttons to the
				ribbon for further usability

				Example below:

				<span class="ribbon-button-alignment pull-right">
				<span id="search" class="btn btn-ribbon hidden-xs" data-title="search"><i class="fa-grid"></i> Change Grid</span>
				<span id="add" class="btn btn-ribbon hidden-xs" data-title="add"><i class="fa-plus"></i> Add</span>
				<span id="search" class="btn btn-ribbon" data-title="search"><i class="fa-search"></i> <span class="hidden-mobile">Search</span></span>
				</span> -->

			</div>
			<!-- END RIBBON -->

			<!-- MAIN CONTENT -->
			<div id="content">

                            <iframe src="proceso" style="height: 800px;width: 100%; border: none; overflow-y: hidden">
                                
                            </iframe>

			</div>
			<!-- END MAIN CONTENT -->

		</div>
		<!-- END MAIN PANEL -->
    <!-- PACE LOADER - turn this on if you want ajax loading to show (caution: uses lots of memory on iDevices)-->
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


    <!-- MAIN APP JS FILE -->
    <script src="resources/js/app.min.js"></script>

    <!-- ENHANCEMENT PLUGINS : NOT A REQUIREMENT -->
    <!-- Voice command : plugin -->
    <script src="resources/js/speech/voicecommand.min.js"></script>

    <!-- SmartChat UI : plugin -->
    <script src="resources/js/smart-chat-ui/smart.chat.ui.min.js"></script>
    <script src="resources/js/smart-chat-ui/smart.chat.manager.min.js"></script>

    <!-- PAGE RELATED PLUGIN(S) -->

    <!-- Flot Chart Plugin: Flot Engine, Flot Resizer, Flot Tooltip -->
    <script src="resources/js/plugin/flot/jquery.flot.cust.min.js"></script>
    <script src="resources/js/plugin/flot/jquery.flot.resize.min.js"></script>
    <script src="resources/js/plugin/flot/jquery.flot.time.min.js"></script>
    <script src="resources/js/plugin/flot/jquery.flot.tooltip.min.js"></script>

    <!-- Vector Maps Plugin: Vectormap engine, Vectormap language -->
    <script src="resources/js/plugin/vectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="resources/js/plugin/vectormap/jquery-jvectormap-world-mill-en.js"></script>

    <!-- Full Calendar -->
    <script src="resources/js/plugin/moment/moment.min.js"></script>
    <script src="resources/js/plugin/fullcalendar/jquery.fullcalendar.min.js"></script>

    <script>
                                $(document).ready(function () {

                                    // DO NOT REMOVE : GLOBAL FUNCTIONS!
                                    pageSetUp();

                                    /*
                                     * PAGE RELATED SCRIPTS
                                     */

                                    $(".js-status-update a").click(function () {
                                        var selText = $(this).text();
                                        var $this = $(this);
                                        $this.parents('.btn-group').find('.dropdown-toggle').html(selText + ' <span class="caret"></span>');
                                        $this.parents('.dropdown-menu').find('li').removeClass('active');
                                        $this.parent().addClass('active');
                                    });

                                    /*
                                     * TODO: add a way to add more todo's to list
                                     */

                                    // initialize sortable
                                    $(function () {
                                        $("#sortable1, #sortable2").sortable({
                                            handle: '.handle',
                                            connectWith: ".todo",
                                            update: countTasks
                                        }).disableSelection();
                                    });

                                    // check and uncheck
                                    $('.todo .checkbox > input[type="checkbox"]').click(function () {
                                        var $this = $(this).parent().parent().parent();

                                        if ($(this).prop('checked')) {
                                            $this.addClass("complete");

                                            // remove this if you want to undo a check list once checked
                                            //$(this).attr("disabled", true);
                                            $(this).parent().hide();

                                            // once clicked - add class, copy to memory then remove and add to sortable3
                                            $this.slideUp(500, function () {
                                                $this.clone().prependTo("#sortable3").effect("highlight", {}, 800);
                                                $this.remove();
                                                countTasks();
                                            });
                                        } else {
                                            // insert undo code here...
                                        }

                                    })
                                    

                                    /*
                                     * RUN PAGE GRAPHS
                                     */

                                    /* TAB 1: UPDATING CHART */
                                    // For the demo we use generated data, but normally it would be coming from the server

                                    var data = [], totalPoints = 200, $UpdatingChartColors = $("#updating-chart").css('color');

                                    function getRandomData() {
                                        if (data.length > 0)
                                            data = data.slice(1);

                                        // do a random walk
                                        while (data.length < totalPoints) {
                                            var prev = data.length > 0 ? data[data.length - 1] : 50;
                                            var y = prev + Math.random() * 10 - 5;
                                            if (y < 0)
                                                y = 0;
                                            if (y > 100)
                                                y = 100;
                                            data.push(y);
                                        }

                                        // zip the generated y values with the x values
                                        var res = [];
                                        for (var i = 0; i < data.length; ++i)
                                            res.push([i, data[i]])
                                        return res;
                                    }

                                    // setup control widget
                                    var updateInterval = 1500;
                                    $("#updating-chart").val(updateInterval).change(function () {

                                        var v = $(this).val();
                                        if (v && !isNaN(+v)) {
                                            updateInterval = +v;
                                            $(this).val("" + updateInterval);
                                        }

                                    });

                                    // setup plot
                                    var options = {
                                        yaxis: {
                                            min: 0,
                                            max: 100
                                        },
                                        xaxis: {
                                            min: 0,
                                            max: 100
                                        },
                                        colors: [$UpdatingChartColors],
                                        series: {
                                            lines: {
                                                lineWidth: 1,
                                                fill: true,
                                                fillColor: {
                                                    colors: [{
                                                            opacity: 0.4
                                                        }, {
                                                            opacity: 0
                                                        }]
                                                },
                                                steps: false

                                            }
                                        }
                                    };

                                    var plot = $.plot($("#updating-chart"), [getRandomData()], options);

                                    /* live switch */
                                    $('input[type="checkbox"]#start_interval').click(function () {
                                        if ($(this).prop('checked')) {
                                            $on = true;
                                            updateInterval = 1500;
                                            update();
                                        } else {
                                            clearInterval(updateInterval);
                                            $on = false;
                                        }
                                    });

                                    function update() {
                                        if ($on == true) {
                                            plot.setData([getRandomData()]);
                                            plot.draw();
                                            setTimeout(update, updateInterval);

                                        } else {
                                            clearInterval(updateInterval)
                                        }

                                    }

                                    var $on = false;

                                    /*end updating chart*/

                                    /* TAB 2: Social Network  */

                                    $(function () {
                                        // jQuery Flot Chart
                                        var twitter = [[1, 27], [2, 34], [3, 51], [4, 48], [5, 55], [6, 65], [7, 61], [8, 70], [9, 65], [10, 75], [11, 57], [12, 59], [13, 62]], facebook = [[1, 25], [2, 31], [3, 45], [4, 37], [5, 38], [6, 40], [7, 47], [8, 55], [9, 43], [10, 50], [11, 47], [12, 39], [13, 47]], data = [{
                                                label: "Twitter",
                                                data: twitter,
                                                lines: {
                                                    show: true,
                                                    lineWidth: 1,
                                                    fill: true,
                                                    fillColor: {
                                                        colors: [{
                                                                opacity: 0.1
                                                            }, {
                                                                opacity: 0.13
                                                            }]
                                                    }
                                                },
                                                points: {
                                                    show: true
                                                }
                                            }, {
                                                label: "Facebook",
                                                data: facebook,
                                                lines: {
                                                    show: true,
                                                    lineWidth: 1,
                                                    fill: true,
                                                    fillColor: {
                                                        colors: [{
                                                                opacity: 0.1
                                                            }, {
                                                                opacity: 0.13
                                                            }]
                                                    }
                                                },
                                                points: {
                                                    show: true
                                                }
                                            }];

                                        var options = {
                                            grid: {
                                                hoverable: true
                                            },
                                            colors: ["#568A89", "#3276B1"],
                                            tooltip: true,
                                            tooltipOpts: {
                                                //content : "Value <b>$x</b> Value <span>$y</span>",
                                                defaultTheme: false
                                            },
                                            xaxis: {
                                                ticks: [[1, "JAN"], [2, "FEB"], [3, "MAR"], [4, "APR"], [5, "MAY"], [6, "JUN"], [7, "JUL"], [8, "AUG"], [9, "SEP"], [10, "OCT"], [11, "NOV"], [12, "DEC"], [13, "JAN+1"]]
                                            },
                                            yaxes: {
                                            }
                                        };

                                        var plot3 = $.plot($("#statsChart"), data, options);
                                    });

                                    // END TAB 2

                                    // TAB THREE GRAPH //
                                    /* TAB 3: Revenew  */

                                    $(function () {

                                        var trgt = [[1354586000000, 153], [1364587000000, 658], [1374588000000, 198], [1384589000000, 663], [1394590000000, 801], [1404591000000, 1080], [1414592000000, 353], [1424593000000, 749], [1434594000000, 523], [1444595000000, 258], [1454596000000, 688], [1464597000000, 364]], prft = [[1354586000000, 53], [1364587000000, 65], [1374588000000, 98], [1384589000000, 83], [1394590000000, 980], [1404591000000, 808], [1414592000000, 720], [1424593000000, 674], [1434594000000, 23], [1444595000000, 79], [1454596000000, 88], [1464597000000, 36]], sgnups = [[1354586000000, 647], [1364587000000, 435], [1374588000000, 784], [1384589000000, 346], [1394590000000, 487], [1404591000000, 463], [1414592000000, 479], [1424593000000, 236], [1434594000000, 843], [1444595000000, 657], [1454596000000, 241], [1464597000000, 341]], toggles = $("#rev-toggles"), target = $("#flotcontainer");

                                        var data = [{
                                                label: "Target Profit",
                                                data: trgt,
                                                bars: {
                                                    show: true,
                                                    align: "center",
                                                    barWidth: 30 * 30 * 60 * 1000 * 80
                                                }
                                            }, {
                                                label: "Actual Profit",
                                                data: prft,
                                                color: '#3276B1',
                                                lines: {
                                                    show: true,
                                                    lineWidth: 3
                                                },
                                                points: {
                                                    show: true
                                                }
                                            }, {
                                                label: "Actual Signups",
                                                data: sgnups,
                                                color: '#71843F',
                                                lines: {
                                                    show: true,
                                                    lineWidth: 1
                                                },
                                                points: {
                                                    show: true
                                                }
                                            }]

                                        var options = {
                                            grid: {
                                                hoverable: true
                                            },
                                            tooltip: true,
                                            tooltipOpts: {
                                                //content: '%x - %y',
                                                //dateFormat: '%b %y',
                                                defaultTheme: false
                                            },
                                            xaxis: {
                                                mode: "time"
                                            },
                                            yaxes: {
                                                tickFormatter: function (val, axis) {
                                                    return "$" + val;
                                                },
                                                max: 1200
                                            }

                                        };

                                        plot2 = null;

                                        function plotNow() {
                                            var d = [];
                                            toggles.find(':checkbox').each(function () {
                                                if ($(this).is(':checked')) {
                                                    d.push(data[$(this).attr("name").substr(4, 1)]);
                                                }
                                            });
                                            if (d.length > 0) {
                                                if (plot2) {
                                                    plot2.setData(d);
                                                    plot2.draw();
                                                } else {
                                                    plot2 = $.plot(target, d, options);
                                                }
                                            }

                                        }
                                        ;

                                        toggles.find(':checkbox').on('change', function () {
                                            plotNow();
                                        });
                                        plotNow()

                                    });

                                    /*
                                     * VECTOR MAP
                                     */

                                    data_array = {
                                        "US": 4977,
                                        "AU": 4873,
                                        "IN": 3671,
                                        "BR": 2476,
                                        "TR": 1476,
                                        "CN": 146,
                                        "CA": 134,
                                        "BD": 100
                                    };

                                    $('#vector-map').vectorMap({
                                        map: 'world_mill_en',
                                        backgroundColor: '#fff',
                                        regionStyle: {
                                            initial: {
                                                fill: '#c4c4c4'
                                            },
                                            hover: {
                                                "fill-opacity": 1
                                            }
                                        },
                                        series: {
                                            regions: [{
                                                    values: data_array,
                                                    scale: ['#85a8b6', '#4d7686'],
                                                    normalizeFunction: 'polynomial'
                                                }]
                                        },
                                        onRegionLabelShow: function (e, el, code) {
                                            if (typeof data_array[code] == 'undefined') {
                                                e.preventDefault();
                                            } else {
                                                var countrylbl = data_array[code];
                                                el.html(el.html() + ': ' + countrylbl + ' visits');
                                            }
                                        }
                                    });

                                    /*
                                     * FULL CALENDAR JS
                                     */

                                    if ($("#calendar").length) {
                                        var date = new Date();
                                        var d = date.getDate();
                                        var m = date.getMonth();
                                        var y = date.getFullYear();

                                        var calendar = $('#calendar').fullCalendar({
                                            editable: true,
                                            draggable: true,
                                            selectable: false,
                                            selectHelper: true,
                                            unselectAuto: false,
                                            disableResizing: false,
                                            height: "auto",
                                            header: {
                                                left: 'title', //,today
                                                center: 'prev, next, today',
                                                right: 'month, agendaWeek, agenDay' //month, agendaDay,
                                            },
                                            select: function (start, end, allDay) {
                                                var title = prompt('Event Title:');
                                                if (title) {
                                                    calendar.fullCalendar('renderEvent', {
                                                        title: title,
                                                        start: start,
                                                        end: end,
                                                        allDay: allDay
                                                    }, true // make the event "stick"
                                                            );
                                                }
                                                calendar.fullCalendar('unselect');
                                            },
                                            events: [{
                                                    title: 'All Day Event',
                                                    start: new Date(y, m, 1),
                                                    description: 'long description',
                                                    className: ["event", "bg-color-greenLight"],
                                                    icon: 'fa-check'
                                                }, {
                                                    title: 'Long Event',
                                                    start: new Date(y, m, d - 5),
                                                    end: new Date(y, m, d - 2),
                                                    className: ["event", "bg-color-red"],
                                                    icon: 'fa-lock'
                                                }, {
                                                    id: 999,
                                                    title: 'Repeating Event',
                                                    start: new Date(y, m, d - 3, 16, 0),
                                                    allDay: false,
                                                    className: ["event", "bg-color-blue"],
                                                    icon: 'fa-clock-o'
                                                }, {
                                                    id: 999,
                                                    title: 'Repeating Event',
                                                    start: new Date(y, m, d + 4, 16, 0),
                                                    allDay: false,
                                                    className: ["event", "bg-color-blue"],
                                                    icon: 'fa-clock-o'
                                                }, {
                                                    title: 'Meeting',
                                                    start: new Date(y, m, d, 10, 30),
                                                    allDay: false,
                                                    className: ["event", "bg-color-darken"]
                                                }, {
                                                    title: 'Lunch',
                                                    start: new Date(y, m, d, 12, 0),
                                                    end: new Date(y, m, d, 14, 0),
                                                    allDay: false,
                                                    className: ["event", "bg-color-darken"]
                                                }, {
                                                    title: 'Birthday Party',
                                                    start: new Date(y, m, d + 1, 19, 0),
                                                    end: new Date(y, m, d + 1, 22, 30),
                                                    allDay: false,
                                                    className: ["event", "bg-color-darken"]
                                                }, {
                                                    title: 'Smartadmin Open Day',
                                                    start: new Date(y, m, 28),
                                                    end: new Date(y, m, 29),
                                                    className: ["event", "bg-color-darken"]
                                                }],
                                            eventRender: function (event, element, icon) {
                                                if (!event.description == "") {
                                                    element.find('.fc-title').append("<br/><span class='ultra-light'>" + event.description + "</span>");
                                                }
                                                if (!event.icon == "") {
                                                    element.find('.fc-title').append("<i class='air air-top-right fa " + event.icon + " '></i>");
                                                }
                                            }
                                        });

                                    }
                                    ;

                                    /* hide default buttons */
                                    $('.fc-toolbar .fc-right, .fc-toolbar .fc-center').hide();

                                    // calendar prev
                                    $('#calendar-buttons #btn-prev').click(function () {
                                        $('.fc-prev-button').click();
                                        return false;
                                    });

                                    // calendar next
                                    $('#calendar-buttons #btn-next').click(function () {
                                        $('.fc-next-button').click();
                                        return false;
                                    });

                                    // calendar today
                                    $('#calendar-buttons #btn-today').click(function () {
                                        $('.fc-button-today').click();
                                        return false;
                                    });

                                    // calendar month
                                    $('#mt').click(function () {
                                        $('#calendar').fullCalendar('changeView', 'month');
                                    });

                                    // calendar agenda week
                                    $('#ag').click(function () {
                                        $('#calendar').fullCalendar('changeView', 'agendaWeek');
                                    });

                                    // calendar agenda day
                                    $('#td').click(function () {
                                        $('#calendar').fullCalendar('changeView', 'agendaDay');
                                    });

                                    /*
                                     * CHAT
                                     */

                                    $.filter_input = $('#filter-chat-list');
                                    $.chat_users_container = $('#chat-container > .chat-list-body')
                                    $.chat_users = $('#chat-users')
                                    $.chat_list_btn = $('#chat-container > .chat-list-open-close');
                                    $.chat_body = $('#chat-body');

                                    /*
                                     * LIST FILTER (CHAT)
                                     */

                                    // custom css expression for a case-insensitive contains()
                                    jQuery.expr[':'].Contains = function (a, i, m) {
                                        return (a.textContent || a.innerText || "").toUpperCase().indexOf(m[3].toUpperCase()) >= 0;
                                    };

                                    function listFilter(list) {// header is any element, list is an unordered list
                                        // create and add the filter form to the header

                                        $.filter_input.change(function () {
                                            var filter = $(this).val();
                                            if (filter) {
                                                // this finds all links in a list that contain the input,
                                                // and hide the ones not containing the input while showing the ones that do
                                                $.chat_users.find("a:not(:Contains(" + filter + "))").parent().slideUp();
                                                $.chat_users.find("a:Contains(" + filter + ")").parent().slideDown();
                                            } else {
                                                $.chat_users.find("li").slideDown();
                                            }
                                            return false;
                                        }).keyup(function () {
                                            // fire the above change event after every letter
                                            $(this).change();

                                        });

                                    }

                                    // on dom ready
                                    listFilter($.chat_users);

                                    // open chat list
                                    $.chat_list_btn.click(function () {
                                        $(this).parent('#chat-container').toggleClass('open');
                                    })

                                    $.chat_body.animate({
                                        scrollTop: $.chat_body[0].scrollHeight
                                    }, 500);

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
<%}%>