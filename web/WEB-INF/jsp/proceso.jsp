<%-- 
    Document   : proceso
    Created on : 05/12/2016, 02:25:13 PM
    Author     : Jose_Luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/font-awesome.min.css" rel="stylesheet" type="text/css"/> 
        <link href="resources/css/smartadmin-production-plugins.min.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/smartadmin-production.min.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/smartadmin-skins.min.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/smartadmin-rtl.min.css" rel="stylesheet" type="text/css"/> 
        <link href="resources/css/demo.min.css" rel="stylesheet" type="text/css"/>  
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,300,400,700" rel="stylesheet">


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
        <div id="main" role="main">
            <div id="content">
                <section id="widget-grid" class="">

                    <!-- row -->
                    <div class="row"> 
                        <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12"> 
                            <div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-1" data-widget-editbutton="false">
                                <header>
                                    <span class="widget-icon"> <i class="fa fa-table"></i> </span>
                                    <h2>Column Filters </h2> 
                                </header> 
                                <div> 
                                    <div class="jarviswidget-editbox"> 
                                    </div> 
                                    <div class="widget-body no-padding">

                                        <table id="datatable_fixed_column" class="table table-striped table-bordered" width="50%">

                                            <thead>
                                                <%--
                                                <tr>
                                                    <th class="hasinput" style="width:17%">
                                                        <input type="text" class="form-control" placeholder="Buscar Nombre" />
                                                    </th>
                                                    <th class="hasinput" style="width:18%">
                                                        <div class="input-group">
                                                            <input class="form-control" placeholder="Buscar Apellido" type="text">
                                                            <span class="input-group-addon">
                                                                <span class="onoffswitch">
                                                                    <input type="checkbox" name="start_interval" class="onoffswitch-checkbox" id="st3">
                                                                    <label class="onoffswitch-label" for="st3"> 
                                                                        <span class="onoffswitch-inner" data-swchon-text="YES" data-swchoff-text="NO"></span> 
                                                                        <span class="onoffswitch-switch"></span> 
                                                                    </label> 
                                                                </span>
                                                            </span>
                                                        </div>


                                                    </th>
                                                    <th class="hasinput" style="width:16%">
                                                        <input type="text" class="form-control" placeholder="Buscar Telefono" />
                                                    </th> 
                                                </tr>
                                                --%>
                                                <tr>
                                                    <th data-class="expand">Nombre</th> 
                                                    <th data-hide="phone">Apellido</th>
                                                    <th data-hide="phone">Telefono</th>
                                                    <th data-hide="phone,tablet">Estado de Proceso</th>

                                                </tr>
                                            </thead>

                                            <tbody>
                                                <tr>
                                                    <td>Tiger Nixon</td>
                                                    <td>System Architect</td>
                                                    <td>3333333</td>
                                                    <td>
                                                        <article class="col-sm-12"> 
                                                            <div class="widget-body"> 
                                                                <div class="row">
                                                                    <form id="wizard-1" novalidate="novalidate">
                                                                        <div id="bootstrap-wizard-1" class="col-sm-5">
                                                                            <div class="form-bootstrapWizard">
                                                                                <ul class="bootstrapWizard form-wizard">
                                                                                    <li class="active" data-target="#step1">
                                                                                        <a href="#tab1" data-toggle="tab"> <span class="step">1</span> <span class="title">Paso 1</span> </a>
                                                                                    </li>
                                                                                    <li data-target="#step2">
                                                                                        <a href="#tab2" data-toggle="tab"> <span class="step">2</span> <span class="title">Paso 2</span> </a>
                                                                                    </li>
                                                                                    <li data-target="#step3">
                                                                                        <a href="#tab3" data-toggle="tab"> <span class="step">3</span> <span class="title">Paso 3</span> </a>
                                                                                    </li>
                                                                                    <li data-target="#step4">
                                                                                        <a href="#tab4" data-toggle="tab"> <span class="step">4</span> <span class="title">Paso 4</span> </a>
                                                                                    </li>
                                                                                </ul>
                                                                                <div class="clearfix"></div>
                                                                            </div> 
                                                                        </div>
                                                                    </form>
                                                                </div> 
                                                            </div> 
                                                        </article>
                                                    </td> 
                                                    <td><a class="btn btn-danger btn-xs" href="javascript:void(0);">Proceso</a></td>
                                                </tr>
                                                <tr>
                                                    <td>Garrett Winters</td>
                                                    <td>Accountant</td>
                                                    <td>44444444444</td> 
                                                    <td><article class="col-sm-12 "> 
                                                            <div class="widget-body"> 
                                                                <div class="row">
                                                                    <form id="wizard-1" novalidate="novalidate">
                                                                        <div id="bootstrap-wizard-1" class="col-sm-5">
                                                                            <div class="form-bootstrapWizard">
                                                                                <ul class="bootstrapWizard form-wizard">
                                                                                    <li class="active" data-target="#step1">
                                                                                        <a href="#tab1" data-toggle="tab"> <span class="step">1</span> <span class="title">Paso 1</span> </a>
                                                                                    </li>
                                                                                    <li data-target="#step2">
                                                                                        <a href="#tab2" data-toggle="tab"> <span class="step">2</span> <span class="title">Paso 2</span> </a>
                                                                                    </li>
                                                                                    <li data-target="#step3">
                                                                                        <a href="#tab3" data-toggle="tab"> <span class="step">3</span> <span class="title">Paso 3</span> </a>
                                                                                    </li>
                                                                                    <li data-target="#step4">
                                                                                        <a href="#tab4" data-toggle="tab"> <span class="step">4</span> <span class="title">Paso 4</span> </a>
                                                                                    </li>
                                                                                </ul>
                                                                                <div class="clearfix"></div>
                                                                            </div> 
                                                                        </div>
                                                                    </form>
                                                                </div> 
                                                            </div> 
                                                        </article>
                                                    </td> 
                                                    <td><a class="btn btn-danger btn-xs" href="javascript:void(0);">Proceso</a></td>
                                                </tr>

                                            </tbody>

                                        </table> 
                                    </div> 
                                </div> 
                            </div> 

                                          ----------------------------          
                            <div class="jarviswidget jarviswidget-color-darken" id="wid-id-0" data-widget-editbutton="false">

                                <header>
                                    <span class="widget-icon"> <i class="fa fa-table"></i> </span>
                                    <h2>Standard Data Tables </h2> 
                                </header> 
                                <div> 
                                    <div class="jarviswidget-editbox">  
                                    </div> 
                                    <div class="widget-body no-padding">

                                        <table id="dt_basic" class="table table-striped table-bordered table-hover" width="100%">
                                            <thead>			                
                                                <tr>
                                                    <th  >ID</th>
                                                    <th ><i class="fa fa-fw fa-user text-muted hidden-md hidden-sm hidden-xs"></i> Nombre</th>
                                                    <th  ><i class="fa fa-fw fa-phone text-muted hidden-md hidden-sm hidden-xs"></i> Apellido</th>
                                                    <th>Telefono</th>
                                                    <th  ><i class="fa fa-fw fa-map-marker txt-color-blue hidden-md hidden-sm hidden-xs"></i> Estado de Proceso</th>
                                                    <th></th>
                                                    <th ></th>  
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>1</td>
                                                    <td>Jennifer</td>
                                                    <td>1-342-463-8341</td>
                                                    <td>Et Rutrum Non Associates</td>
                                                    <td>
                                                        <article class="col-sm-12"> 
                                                            <div class="widget-body"> 
                                                                <div class="row">
                                                                    <form id="wizard-1" novalidate="novalidate">
                                                                        <div id="bootstrap-wizard-1" class="col-sm-5">
                                                                            <div class="form-bootstrapWizard">
                                                                                <ul class="bootstrapWizard form-wizard">
                                                                                    <li class="active" data-target="#step1">
                                                                                        <a href="#tab1" data-toggle="tab"> <span class="step">1</span> <span class="title">Paso 1</span> </a>
                                                                                    </li>
                                                                                    <li data-target="#step2">
                                                                                        <a href="#tab2" data-toggle="tab"> <span class="step">2</span> <span class="title">Paso 2</span> </a>
                                                                                    </li>
                                                                                    <li data-target="#step3">
                                                                                        <a href="#tab3" data-toggle="tab"> <span class="step">3</span> <span class="title">Paso 3</span> </a>
                                                                                    </li>
                                                                                    <li data-target="#step4">
                                                                                        <a href="#tab4" data-toggle="tab"> <span class="step">4</span> <span class="title">Paso 4</span> </a>
                                                                                    </li>
                                                                                </ul>
                                                                                <div class="clearfix"></div>
                                                                            </div> 
                                                                        </div>
                                                                    </form>
                                                                </div> 
                                                            </div> 
                                                        </article>
                                                    </td>
                                                    
                                                    <td> 
                                                    <td> 
                                                </tr>
                                                <tr>
                                                    <td>1</td>
                                                    <td>Jennifer</td>
                                                    <td>1-342-463-8341</td>
                                                    <td>Et Rutrum Non Associates</td>
                                                    <td>
                                                        <article class="col-sm-12"> 
                                                            <div class="widget-body"> 
                                                                <div class="row">
                                                                    <form id="wizard-1" novalidate="novalidate">
                                                                        <div id="bootstrap-wizard-1" class="col-sm-5">
                                                                            <div class="form-bootstrapWizard">
                                                                                <ul class="bootstrapWizard form-wizard">
                                                                                    <li class="active" data-target="#step1">
                                                                                        <a href="#tab1" data-toggle="tab"> <span class="step">1</span> <span class="title">Paso 1</span> </a>
                                                                                    </li>
                                                                                    <li data-target="#step2">
                                                                                        <a href="#tab2" data-toggle="tab"> <span class="step">2</span> <span class="title">Paso 2</span> </a>
                                                                                    </li>
                                                                                    <li data-target="#step3">
                                                                                        <a href="#tab3" data-toggle="tab"> <span class="step">3</span> <span class="title">Paso 3</span> </a>
                                                                                    </li>
                                                                                    <li data-target="#step4">
                                                                                        <a href="#tab4" data-toggle="tab"> <span class="step">4</span> <span class="title">Paso 4</span> </a>
                                                                                    </li>
                                                                                </ul>
                                                                                <div class="clearfix"></div>
                                                                            </div> 
                                                                        </div>
                                                                    </form>
                                                                </div> 
                                                            </div> 
                                                        </article>
                                                    </td>
                                                    <td><a class="btn btn-danger btn-xs" href="javascript:void(0);">Proceso</a></td>
                                                    <td> 
                                                    <td> 
                                                </tr>

                                            </tbody>
                                        </table> 
                                    </div> 
                                </div> 
                            </div>                    
                        </article> 
                    </div> 
                </section>

            </div>
        </div>











        <script src="resources/js/libs/jquery-2.1.1.min.js" type="text/javascript"></script>
        <script data-pace-options='{ "restartOnRequestAfter": true }' src="resources/js/plugin/pace/pace.min.js"></script>

        <!-- Link to Google CDN's jQuery + jQueryUI; fall back to local -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script> 

        <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script> 

        <!-- IMPORTANT: APP CONFIG -->
        <script src="resources/js/app.config.js" type="text/javascript"></script>

        <!-- JS TOUCH : include this plugin for mobile drag / drop touch events-->
        <script src="resources/js/plugin/jquery-touch/jquery.ui.touch-punch.min.js" type="text/javascript"></script> 

        <!-- BOOTSTRAP JS -->
        <script src="resources/js/bootstrap/bootstrap.min.js" type="text/javascript"></script>

        <!-- CUSTOM NOTIFICATION -->
        <script src="resources/js/notification/SmartNotification.min.js" type="text/javascript"></script>

        <!-- JARVIS WIDGETS -->
        <script src="resources/js/smartwidgets/jarvis.widget.min.js" type="text/javascript"></script>

        <!-- EASY PIE CHARTS -->
        <script src="resources/js/plugin/easy-pie-chart/jquery.easy-pie-chart.min.js" type="text/javascript"></script>

        <!-- SPARKLINES -->
        <script src="resources/js/plugin/sparkline/jquery.sparkline.min.js" type="text/javascript"></script>

        <!-- JQUERY VALIDATE -->
        <script src="resources/js/plugin/jquery-validate/jquery.validate.min.js" type="text/javascript"></script>

        <!-- JQUERY MASKED INPUT -->
        <script src="resources/js/plugin/masked-input/jquery.maskedinput.min.js" type="text/javascript"></script>

        <!-- JQUERY SELECT2 INPUT -->
        <script src="resources/js/plugin/select2/select2.min.js" type="text/javascript"></script>

        <!-- JQUERY UI + Bootstrap Slider -->
        <script src="resources/js/plugin/bootstrap-slider/bootstrap-slider.min.js" type="text/javascript"></script>

        <!-- browser msie issue fix -->
        <script src="resources/js/plugin/msie-fix/jquery.mb.browser.min.js" type="text/javascript"></script>

        <!-- FastClick: For mobile devices -->
        <script src="resources/js/plugin/fastclick/fastclick.min.js" type="text/javascript"></script>

        <!--[if IE 8]>
    
        <h1>Your browser is out of date, please update your browser by going to www.microsoft.com/download</h1>
    
        <![endif]-->

        <!-- Demo purpose only -->
        <script src="resources/js/demo.min.js" type="text/javascript"></script>

        <!-- MAIN APP JS FILE -->
        <script src="resources/js/app.min.js" type="text/javascript"></script>

        <!-- ENHANCEMENT PLUGINS : NOT A REQUIREMENT -->
        <!-- Voice command : plugin -->
        <script src="resources/js/speech/voicecommand.min.js" type="text/javascript"></script>

        <!-- SmartChat UI : plugin -->
        <script src="resources/js/smart-chat-ui/smart.chat.ui.min.js" type="text/javascript"></script> 
        <script src="resources/js/smart-chat-ui/smart.chat.manager.min.js" type="text/javascript"></script>
        <!-- PAGE RELATED PLUGIN(S) -->
        <script src="resources/js/plugin/datatables/jquery.dataTables.min.js" type="text/javascript"></script>
        <script src="resources/js/plugin/datatables/dataTables.colVis.min.js" type="text/javascript"></script>
        <script src="resources/js/plugin/datatables/dataTables.tableTools.min.js" type="text/javascript"></script>
        <script src="resources/js/plugin/datatables/dataTables.bootstrap.min.js" type="text/javascript"></script>
        <script src="resources/js/plugin/datatable-responsive/datatables.responsive.min.js" type="text/javascript"></script>

        <script>

            // DO NOT REMOVE : GLOBAL FUNCTIONS!

            $(document).ready(function () {

                pageSetUp();

                /* // DOM Position key index //
             
                 l - Length changing (dropdown)
                 f - Filtering input (search)
                 t - The Table! (datatable)
                 i - Information (records)
                 p - Pagination (paging)
                 r - pRocessing 
                 < and > - div elements
                 <"#id" and > - div with an id
                 <"class" and > - div with a class
                 <"#id.class" and > - div with an id and class
             
                 Also see: http://legacy.datatables.net/usage/features
                 */

                /* BASIC ;*/
                var responsiveHelper_dt_basic = undefined;
                var responsiveHelper_datatable_fixed_column = undefined;
                var responsiveHelper_datatable_col_reorder = undefined;
                var responsiveHelper_datatable_tabletools = undefined;

                var breakpointDefinition = {
                    tablet: 1024,
                    phone: 480
                };

                $('#dt_basic').dataTable({
                    "sDom": "<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>" +
                            "t" +
                            "<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>",
                    "autoWidth": true,
                    "oLanguage": {
                        "sSearch": '<span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>'
                    },
                    "preDrawCallback": function () {
                        // Initialize the responsive datatables helper once.
                        if (!responsiveHelper_dt_basic) {
                            responsiveHelper_dt_basic = new ResponsiveDatatablesHelper($('#dt_basic'), breakpointDefinition);
                        }
                    },
                    "rowCallback": function (nRow) {
                        responsiveHelper_dt_basic.createExpandIcon(nRow);
                    },
                    "drawCallback": function (oSettings) {
                        responsiveHelper_dt_basic.respond();
                    }
                });

                /* END BASIC */

                /* COLUMN FILTER  */
                var otable = $('#datatable_fixed_column').DataTable({
                    //"bFilter": false,
                    //"bInfo": false,
                    //"bLengthChange": false
                    //"bAutoWidth": false,
                    //"bPaginate": false,
                    //"bStateSave": true // saves sort state using localStorage
                    "sDom": "<'dt-toolbar'<'col-xs-12 col-sm-6 hidden-xs'f><'col-sm-6 col-xs-12 hidden-xs'<'toolbar'>>r>" +
                            "t" +
                            "<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>",
                    "autoWidth": true,
                    "oLanguage": {
                        "sSearch": '<span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>'
                    },
                    "preDrawCallback": function () {
                        // Initialize the responsive datatables helper once.
                        if (!responsiveHelper_datatable_fixed_column) {
                            responsiveHelper_datatable_fixed_column = new ResponsiveDatatablesHelper($('#datatable_fixed_column'), breakpointDefinition);
                        }
                    },
                    "rowCallback": function (nRow) {
                        responsiveHelper_datatable_fixed_column.createExpandIcon(nRow);
                    },
                    "drawCallback": function (oSettings) {
                        responsiveHelper_datatable_fixed_column.respond();
                    }

                });

                // custom toolbar
                $("div.toolbar").html('<div class="text-right"><img src="img/logo.png" alt="SmartAdmin" style="width: 111px; margin-top: 3px; margin-right: 10px;"></div>');

                // Apply the filter
                $("#datatable_fixed_column thead th input[type=text]").on('keyup change', function () {

                    otable
                            .column($(this).parent().index() + ':visible')
                            .search(this.value)
                            .draw();

                });

            });

        </script>




    </body>
</html>
