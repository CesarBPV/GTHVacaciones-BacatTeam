<!DOCTYPE html>
<html lang="en-us">
	<head>
		<meta charset="utf-8">
		<!--<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">-->

		<title> R.H</title>
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
	<body class="">

	
		<!-- END NAVIGATION -->

		<!-- MAIN PANEL -->
		<div id="main" role="main">

			<!-- RIBBON -->
			<div id="ribbon">

				<span class="ribbon-button-alignment"> 
					<span id="refresh" class="btn btn-ribbon" data-action="resetWidgets" data-title="refresh"  rel="tooltip" data-placement="bottom" data-original-title="<i class='text-warning fa fa-warning'></i> Warning! This will reset all your widget settings." data-html="true">
						<i class="fa fa-refresh"></i>
					</span> 
				</span>

				<!-- breadcrumb -->
				<ol class="breadcrumb">
					<li>Home</li><li>Tables</li><li>Data Tables</li>
				</ol>
		

			</div>
			<!-- END RIBBON -->

			<!-- MAIN CONTENT -->
			<div id="content">

				<div class="row">
					<div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
						<h1 class="page-title txt-color-blueDark">
							<i class="fa fa-table fa-fw "></i> 
								Table 
							<span>> 
								Trabajadores
							</span>
						</h1>
					</div>
					
				</div>
				
				<!-- widget grid -->
				<section id="widget-grid" class="">
				
					<!-- row -->
					<div class="row">
						<article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
				
						
							<div class="jarviswidget jarviswidget-color-darken" id="wid-id-0" data-widget-editbutton="false">
								
				
								<header>
									<span class="widget-icon"> <i class="fa fa-table"></i> </span>
									<h2>Trabajadoresssss</h2>
				
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
				
										<table id="dt_basic" class="table table-striped table-bordered table-hover" width="100%">
											<thead>			                
												<tr>
													<th data-hide="phone">ID</th>
													<th data-class="expand"><i class="fa fa-fw fa-user text-muted hidden-md hidden-sm hidden-xs"></i> Nombre</th>
                                                                                                        <th data-class="expand"><i class="fa fa-fw fa-user text-muted hidden-md hidden-sm hidden-xs"></i> Apellido</th>
													<th data-hide="phone"><i class="fa fa-fw fa-phone text-muted hidden-md hidden-sm hidden-xs"></i> Telefono</th>
													<th>EstadoCivil</th>
	
													<th data-hide="phone,tablet">Ciudad</th>
													<th data-hide="phone,tablet"><i class="fa fa-fw fa-fw txt-color-blue hidden-md hidden-sm hidden-xs"></i>Proceso</th>
                                                                                              
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>1</td>
													<td>Jennifer</td>
													<td>1-342-463-8341</td>
													<td>Et Rutrum Non Associates</td>
													<td>35728</td>
													<td>Fogo</td>
													<td><article class="col-sm-12"> 
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
                                                            </article></td>
                                                                                                   
												</tr>
												<tr>
													<td>1</td>
													<td>Jennifer</td>
													<td>1-342-463-8341</td>
													<td>Et Rutrum Non Associates</td>
													<td>35728</td>
													<td>Fogo</td>
													<td><article class="col-sm-12"> 
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
                                                            </article></td>
                                                                                                   
												</tr><tr>
													<td>1</td>
													<td>Jennifer</td>
													<td>1-342-463-8341</td>
													<td>Et Rutrum Non Associates</td>
													<td>35728</td>
													<td>Fogo</td>
													<td><article class="col-sm-12"> 
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
                                                            </article></td>
                                                                                                   
												</tr><tr>
													<td>1</td>
													<td>Jennifer</td>
													<td>1-342-463-8341</td>
													<td>Et Rutrum Non Associates</td>
													<td>35728</td>
													<td>Fogo</td>
													<td><article class="col-sm-12"> 
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
                                                            </article></td>
                                                                                                   
												</tr><tr>
													<td>1</td>
													<td>Jennifer</td>
													<td>1-342-463-8341</td>
													<td>Et Rutrum Non Associates</td>
													<td>35728</td>
													<td>Fogo</td>
													<td><article class="col-sm-12"> 
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
                                                            </article></td>
                                                                                                   
												</tr><tr>
													<td>1</td>
													<td>Jennifer</td>
													<td>1-342-463-8341</td>
													<td>Et Rutrum Non Associates</td>
													<td>35728</td>
													<td>Fogo</td>
													<td><article class="col-sm-12"> 
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
                                                            </article></td>
                                                                                                   
												</tr><tr>
													<td>1</td>
													<td>Jennifer</td>
													<td>1-342-463-8341</td>
													<td>Et Rutrum Non Associates</td>
													<td>35728</td>
													<td>Fogo</td>
													<td><article class="col-sm-12"> 
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
                                                            </article></td>
                                                                                                   
												</tr><tr>
													<td>1</td>
													<td>Jennifer</td>
													<td>1-342-463-8341</td>
													<td>Et Rutrum Non Associates</td>
													<td>35728</td>
													<td>Fogo</td>
													<td><article class="col-sm-12"> 
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
                                                            </article></td>
                                                                                                   
												</tr><tr>
													<td>1</td>
													<td>Jennifer</td>
													<td>1-342-463-8341</td>
													<td>Et Rutrum Non Associates</td>
													<td>35728</td>
													<td>Fogo</td>
													<td><article class="col-sm-12"> 
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
                                                            </article></td>
                                                                                                   
												</tr><tr>
													<td>1</td>
													<td>Jennifer</td>
													<td>1-342-463-8341</td>
													<td>Et Rutrum Non Associates</td>
													<td>35728</td>
													<td>Fogo</td>
													<td><article class="col-sm-12"> 
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
                                                            </article></td>
                                                                                                   
												</tr><tr>
													<td>1</td>
													<td>Jennifer</td>
													<td>1-342-463-8341</td>
													<td>Et Rutrum Non Associates</td>
													<td>35728</td>
													<td>Fogo</td>
													<td><article class="col-sm-12"> 
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
                                                            </article></td>
                                                                                                   
												</tr><tr>
													<td>1</td>
													<td>Jennifer</td>
													<td>1-342-463-8341</td>
													<td>Et Rutrum Non Associates</td>
													<td>35728</td>
													<td>Fogo</td>
													<td><article class="col-sm-12"> 
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
                                                            </article></td>
                                                                                                   
												</tr><tr>
													<td>1</td>
													<td>Jennifer</td>
													<td>1-342-463-8341</td>
													<td>Et Rutrum Non Associates</td>
													<td>35728</td>
													<td>Fogo</td>
													<td><article class="col-sm-12"> 
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
                                                            </article></td>
                                                                                                   
												</tr><tr>
													<td>1</td>
													<td>Jennifer</td>
													<td>1-342-463-8341</td>
													<td>Et Rutrum Non Associates</td>
													<td>35728</td>
													<td>Fogo</td>
													<td><article class="col-sm-12"> 
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
                                                            </article></td>
                                                                                                   
												</tr><tr>
													<td>1</td>
													<td>Jennifer</td>
													<td>1-342-463-8341</td>
													<td>Et Rutrum Non Associates</td>
													<td>35728</td>
													<td>Fogo</td>
													<td><article class="col-sm-12"> 
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
                                                            </article></td>
                                                                                                   
												</tr><tr>
													<td>1</td>
													<td>Jennifer</td>
													<td>1-342-463-8341</td>
													<td>Et Rutrum Non Associates</td>
													<td>35728</td>
													<td>Fogo</td>
													<td><article class="col-sm-12"> 
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
                                                            </article></td>
                                                                                                   
												</tr><tr>
													<td>1</td>
													<td>Jennifer</td>
													<td>1-342-463-8341</td>
													<td>Et Rutrum Non Associates</td>
													<td>35728</td>
													<td>Fogo</td>
													<td><article class="col-sm-12"> 
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
                                                            </article></td>
                                                                                                   
												</tr><tr>
													<td>1</td>
													<td>Jennifer</td>
													<td>1-342-463-8341</td>
													<td>Et Rutrum Non Associates</td>
													<td>35728</td>
													<td>Fogo</td>
													<td><article class="col-sm-12"> 
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
                                                            </article></td>
                                                                                                   
												</tr><tr>
													<td>1</td>
													<td>Jennifer</td>
													<td>1-342-463-8341</td>
													<td>Et Rutrum Non Associates</td>
													<td>35728</td>
													<td>Fogo</td>
													<td><article class="col-sm-12"> 
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
                                                            </article></td>
                                                                                                   
												</tr><tr>
													<td>1</td>
													<td>Jennifer</td>
													<td>1-342-463-8341</td>
													<td>Et Rutrum Non Associates</td>
													<td>35728</td>
													<td>Fogo</td>
													<td><article class="col-sm-12"> 
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
                                                            </article></td>
                                                                                                   
												</tr><tr>
													<td>1</td>
													<td>Jennifer</td>
													<td>1-342-463-8341</td>
													<td>Et Rutrum Non Associates</td>
													<td>35728</td>
													<td>Fogo</td>
													<td><article class="col-sm-12"> 
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
                                                            </article></td>
                                                                                                   
												</tr><tr>
													<td>1</td>
													<td>Jennifer</td>
													<td>1-342-463-8341</td>
													<td>Et Rutrum Non Associates</td>
													<td>35728</td>
													<td>Fogo</td>
													<td><article class="col-sm-12"> 
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
                                                            </article></td>
                                                                                                   
												</tr><tr>
													<td>1</td>
													<td>Jennifer</td>
													<td>1-342-463-8341</td>
													<td>Et Rutrum Non Associates</td>
													<td>35728</td>
													<td>Fogo</td>
													<td><article class="col-sm-12"> 
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
                                                            </article></td>
                                                                                                   
												</tr><tr>
													<td>1</td>
													<td>Jennifer</td>
													<td>1-342-463-8341</td>
													<td>Et Rutrum Non Associates</td>
													<td>35728</td>
													<td>Fogo</td>
													<td><article class="col-sm-12"> 
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
                                                            </article></td>
                                                                                                   
												</tr><tr>
													<td>1</td>
													<td>Jennifer</td>
													<td>1-342-463-8341</td>
													<td>Et Rutrum Non Associates</td>
													<td>35728</td>
													<td>Fogo</td>
													<td><article class="col-sm-12"> 
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
                                                            </article></td>
                                                                                                   
												</tr><tr>
													<td>1</td>
													<td>Jennifer</td>
													<td>1-342-463-8341</td>
													<td>Et Rutrum Non Associates</td>
													<td>35728</td>
													<td>Fogo</td>
													<td><article class="col-sm-12"> 
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
                                                            </article></td>
                                                                                                   
												</tr><tr>
													<td>1</td>
													<td>Jennifer</td>
													<td>1-342-463-8341</td>
													<td>Et Rutrum Non Associates</td>
													<td>35728</td>
													<td>Fogo</td>
													<td><article class="col-sm-12"> 
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
                                                            </article></td>
                                                                                                   
												</tr><tr>
													<td>1</td>
													<td>Jennifer</td>
													<td>1-342-463-8341</td>
													<td>Et Rutrum Non Associates</td>
													<td>35728</td>
													<td>Fogo</td>
													<td><article class="col-sm-12"> 
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
                                                            </article></td>
                                                                                                   
												</tr><tr>
													<td>1</td>
													<td>Jennifer</td>
													<td>1-342-463-8341</td>
													<td>Et Rutrum Non Associates</td>
													<td>35728</td>
													<td>Fogo</td>
													<td><article class="col-sm-12"> 
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
                                                            </article></td>
                                                                                                   
												</tr><tr>
													<td>1</td>
													<td>Jennifer</td>
													<td>1-342-463-8341</td>
													<td>Et Rutrum Non Associates</td>
													<td>35728</td>
													<td>Fogo</td>
													<td><article class="col-sm-12"> 
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
                                                            </article></td>
                                                                                                   
												</tr><tr>
													<td>1</td>
													<td>Jennifer</td>
													<td>1-342-463-8341</td>
													<td>Et Rutrum Non Associates</td>
													<td>35728</td>
													<td>Fogo</td>
													<td><article class="col-sm-12"> 
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
                                                            </article></td>
                                                                                                   
												</tr><tr>
													<td>1</td>
													<td>MIAU</td>
													<td>1-342-463-8341</td>
													<td>Et Rutrum Non Associates</td>
													<td>35728</td>
													<td>Fogo</td>
													<td><article class="col-sm-12"> 
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
                                                            </article></td>
                                                                                                   
												</tr><tr>
													<td>1</td>
													<td>CESAR</td>
													<td>1-342-463-8341</td>
													<td>Et Rutrum Non Associates</td>
													<td>35728</td>
													<td>Fogo</td>
													<td><article class="col-sm-12"> 
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
                                                            </article></td>
                                                                                                   
												</tr><tr>
													<td>1</td>
													<td>JOSE </td>
													<td>1-342-463-8341</td>
													<td>Et Rutrum Non Associates</td>
													<td>35728</td>
													<td>Fogo</td>
													<td><article class="col-sm-12"> 
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
                                                            </article></td>
                                                                                                   
												</tr><tr>
													<td>1</td>
													<td>JOHN</td>
													<td>1-342-463-8341</td>
													<td>Et Rutrum Non Associates</td>
													<td>35728</td>
													<td>Fogo</td>
													<td><article class="col-sm-12"> 
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
                                                            </article></td>
                                                                                                   
												</tr><tr>
													<td>1</td>
													<td>Amador </td>
													<td>1-342-463-8341</td>
													<td>Et Rutrum Non Associates</td>
													<td>35728</td>
													<td>Fogo</td>
													<td><article class="col-sm-12"> 
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
                                                            </article></td>
                                                                                                   
												</tr>
											</tbody>
										</table>

									</div>
									<!-- end widget content -->
				
								</div>
								<!-- end widget div -->
				
							</div>
							<!-- end widget -->
				
							
		
		<!-- END SHORTCUT AREA -->

		<!--================================================== -->

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
		<script src="resources/js/plugin/datatables/jquery.dataTables.min.js"></script>
		<script src="resources/js/plugin/datatables/dataTables.colVis.min.js"></script>
		<script src="resources/js/plugin/datatables/dataTables.tableTools.min.js"></script>
		<script src="resources/js/plugin/datatables/dataTables.bootstrap.min.js"></script>
		<script src="resources/js/plugin/datatable-responsive/datatables.responsive.min.js"></script>

		<script type="text/javascript">
		
		// DO NOT REMOVE : GLOBAL FUNCTIONS!
		
		$(document).ready(function() {
			
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
				
				var breakpointDefinition = {
					tablet : 1024,
					phone : 480
				};
	
				$('#dt_basic').dataTable({
					"sDom": "<'dt-toolbar'<'col-xs-15 col-sm-5'f><'col-sm-5 col-xs-15 hidden-xs'l>r>"+
						"t"+
						"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>",
					"autoWidth" : true,
			        "oLanguage": {
					    "sSearch": '<span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>'
					},
					"preDrawCallback" : function() {
						// Initialize the responsive datatables helper once.
						if (!responsiveHelper_dt_basic) {
							responsiveHelper_dt_basic = new ResponsiveDatatablesHelper($('#dt_basic'), breakpointDefinition);
						}
					},
					"rowCallback" : function(nRow) {
						responsiveHelper_dt_basic.createExpandIcon(nRow);
					},
					"drawCallback" : function(oSettings) {
						responsiveHelper_dt_basic.respond();
					}
				});
	
			/* END BASIC */
			
		})

		</script>

		<!-- Your GOOGLE ANALYTICS CODE Below -->
		
	</body>

</html>