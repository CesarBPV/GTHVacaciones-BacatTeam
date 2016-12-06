<!DOCTYPE html>
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
		<link rel="apple-touch-startup-image" href="resources/img/splash/iphone.png" media="screen and (max-device-width: 320px)">s
	<body class="">

		<!-- Left panel : Navigation area -->
		<!-- Note: This width of the aside area can be adjusted through LESS variables -->
		<aside id="left-panel">

			<!-- User info -->
			<div class="login-info">
				<span> <!-- User image size is adjusted inside CSS, it should stay as it --> 
					
					<a href="javascript:void(0);" id="show-shortcut" data-action="toggleShortcut">
						<img src="img/avatars/sunny.png" alt="me" class="online" /> 
						<span>
							john.doe 
						</span>
						<i class="fa fa-angle-down"></i>
					</a> 
					
				</span>
			</div>
			<!-- end user info -->

		

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

				<span class="ribbon-button-alignment"> 
					<span id="refresh" class="btn btn-ribbon" data-action="resetWidgets" data-title="refresh"  rel="tooltip" data-placement="bottom" data-original-title="<i class='text-warning fa fa-warning'></i> Warning! This will reset all your widget settings." data-html="true">
						<i class="fa fa-refresh"></i>
					</span> 
				</span>
				
				<!-- breadcrumb -->
				<ol class="breadcrumb">
					<li>Home</li><li>Forms</li><li>Wizards</li>
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

				
				
				<!-- widget grid -->
				<section id="widget-grid" class="">
				
					<!-- row -->
					<div class="row">
				
						<!-- NEW WIDGET START -->
						<article class="col-sm-12 col-md-12 col-lg-6">
				
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
									<h2>Very Basic Wizard Example </h2>
				
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
													<div class="form-bootstrapWizard">
														<ul class="bootstrapWizard form-wizard">
															<li class="active" data-target="#step1">
																<a href="#tab1" data-toggle="tab"> <span class="step">1</span> <span class="title">Basic information</span> </a>
															</li>
															<li data-target="#step2">
																<a href="#tab2" data-toggle="tab"> <span class="step">2</span> <span class="title">Billing information</span> </a>
															</li>
															<li data-target="#step3">
																<a href="#tab3" data-toggle="tab"> <span class="step">3</span> <span class="title">Domain Setup</span> </a>
															</li>
															<li data-target="#step4">
																<a href="#tab4" data-toggle="tab"> <span class="step">4</span> <span class="title">Save Form</span> </a>
															</li>
														</ul>
														<div class="clearfix"></div>
													</div>
													
												</div>
											</form>
										</div>
				
									</div>
									<!-- end widget content -->
				
								</div>
								<!-- end widget div -->
				
							</div>
							<!-- end widget -->
				
						</article>
						<!-- WIDGET END -->
				
						<!-- NEW WIDGET START -->
						<article class="col-sm-12 col-md-12 col-lg-6">
				
							<!-- Widget ID (each widget will need unique ID)-->
							<div class="jarviswidget" id="wid-id-2" data-widget-editbutton="false" data-widget-deletebutton="false">
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
									<h2>Fuel Wizard </h2>
				
								</header>
				
								<!-- widget div-->
								<div>
				
									<!-- widget edit box -->
									<div class="jarviswidget-editbox">
										<!-- This area used as dropdown edit box -->
				
									</div>
									<!-- end widget edit box -->
				
									<!-- widget content -->
									<div class="widget-body fuelux">
				
										<div class="wizard">
											<ul class="steps">
												<li data-target="#step1" class="active">
													<span class="badge badge-info">1</span>Step 1<span class="chevron"></span>
												</li>
												<li data-target="#step2">
													<span class="badge">2</span>Step 2<span class="chevron"></span>
												</li>
												<li data-target="#step3">
													<span class="badge">3</span>Step 3<span class="chevron"></span>
												</li>
												<li data-target="#step4">
													<span class="badge">4</span>Step 4<span class="chevron"></span>
												</li>
												<li data-target="#step5">
													<span class="badge">5</span>Step 5<span class="chevron"></span>
												</li>
											</ul>
											<div class="actions">
												<button type="button" class="btn btn-sm btn-primary btn-prev">
													<i class="fa fa-arrow-left"></i>Prev
												</button>
												<button type="button" class="btn btn-sm btn-success btn-next" data-last="Finish">
													Next<i class="fa fa-arrow-right"></i>
												</button>
											</div>
										</div>
										<div class="step-content">
											<form class="form-horizontal" id="fuelux-wizard" method="post">
				
												<div class="step-pane active" id="step1">
													<h3><strong>Step 1 </strong> - Validation states</h3>
				
													<!-- wizard form starts here -->
													<fieldset>
				
														<div class="form-group has-warning">
															<label class="col-md-2 control-label">Input warning</label>
															<div class="col-md-10">
																<div class="input-group">
																	<input class="form-control" type="text">
																	<span class="input-group-addon"><i class="fa fa-warning"></i></span>
																</div>
																<span class="help-block">Something may have gone wrong</span>
															</div>
				
														</div>
				
														<div class="form-group has-error">
															<label class="col-md-2 control-label">Input error</label>
															<div class="col-md-10">
																<div class="input-group">
																	<input class="form-control" type="text">
																	<span class="input-group-addon"><i class="glyphicon glyphicon-remove-circle"></i></span>
																</div>
																<span class="help-block"><i class="fa fa-warning"></i> Please correct the error</span>
															</div>
														</div>
				
														<div class="form-group has-success">
															<label class="col-md-2 control-label">Input success</label>
															<div class="col-md-10">
																<div class="input-group">
																	<span class="input-group-addon"><i class="fa fa-dollar"></i></span>
																	<input class="form-control" type="text">
																	<span class="input-group-addon"><i class="fa fa-check"></i></span>
																</div>
																<span class="help-block">Something may have gone wrong</span>
															</div>
														</div>
				
														<div class="form-group">
															<label class="control-label col-md-2">Input icon success</label>
															<div class="col-md-10">
																<div class="row">
																	<div class="col-sm-12">
				
																		<div class="input-icon-left">
																			<i class="fa txt-color-green fa-check"></i>
																			<input class="form-control" placeholder="Left Icon" type="text">
																		</div>
				
																	</div>
																</div>
															</div>
														</div>
				
													</fieldset>
				
												</div>
				
												<div class="step-pane" id="step2">
													<h3><strong>Step 2 </strong> - Alerts</h3>
				
													<div class="alert alert-warning fade in">
														<button class="close" data-dismiss="alert">
															×
														</button>
														<i class="fa-fw fa fa-warning"></i>
														<strong>Warning</strong> Your monthly traffic is reaching limit.
													</div>
				
													<div class="alert alert-success fade in">
														<button class="close" data-dismiss="alert">
															×
														</button>
														<i class="fa-fw fa fa-check"></i>
														<strong>Success</strong> The page has been added.
													</div>
				
													<div class="alert alert-info fade in">
														<button class="close" data-dismiss="alert">
															×
														</button>
														<i class="fa-fw fa fa-info"></i>
														<strong>Info!</strong> You have 198 unread messages.
													</div>
				
													<div class="alert alert-danger fade in">
														<button class="close" data-dismiss="alert">
															×
														</button>
														<i class="fa-fw fa fa-times"></i>
														<strong>Error!</strong> The daily cronjob has failed.
													</div>
				
												</div>
				
												<div class="step-pane" id="step3">
													<h3><strong>Step 3 </strong> - Wizard continued</h3>
													<br>
													<br>
													<h1 class="text-center text-primary"> This will be your Step 3 </h1>
													<br>
													<br>
													<br>
													<br>
												</div>
				
												<div class="step-pane" id="step4">
													<h3><strong>Step 4 </strong> - Wizard continued...</h3>
													<br>
													<br>
													<h1 class="text-center text-danger"> This will be your Step 4 </h1>
													<br>
													<br>
													<br>
													<br>
												</div>
				
												<div class="step-pane" id="step5">
													<h3><strong>Step 5 </strong> - Finished!</h3>
													<br>
													<br>
													<h1 class="text-center text-success"><i class="fa fa-check"></i> Congratulations!
													<br>
													<small>Click finish to end wizard</small></h1>
													<br>
													<br>
													<br>
													<br>
												</div>
				
											</form>
										</div>
				
									</div>
									<!-- end widget content -->
				
								</div>
								<!-- end widget div -->
				
							</div>
							<!-- end widget -->
				
						</article>
						<!-- WIDGET END -->
				
					</div>
				
					<!-- end row -->
				
				</section>
				<!-- end widget grid -->

			</div>
			<!-- END MAIN CONTENT -->

		</div>
		<!-- END MAIN PANEL -->

		

		<!-- SHORTCUT AREA : With large tiles (activated via clicking user name tag)
		Note: These tiles are completely responsive,
		you can add as many as you like
		-->
		<div id="shortcut">
			<ul>
				<li>
					<a href="inbox.html" class="jarvismetro-tile big-cubes bg-color-blue"> <span class="iconbox"> <i class="fa fa-envelope fa-4x"></i> <span>Mail <span class="label pull-right bg-color-darken">14</span></span> </span> </a>
				</li>
				<li>
					<a href="calendar.html" class="jarvismetro-tile big-cubes bg-color-orangeDark"> <span class="iconbox"> <i class="fa fa-calendar fa-4x"></i> <span>Calendar</span> </span> </a>
				</li>
				<li>
					<a href="gmap-xml.html" class="jarvismetro-tile big-cubes bg-color-purple"> <span class="iconbox"> <i class="fa fa-map-marker fa-4x"></i> <span>Maps</span> </span> </a>
				</li>
				<li>
					<a href="invoice.html" class="jarvismetro-tile big-cubes bg-color-blueDark"> <span class="iconbox"> <i class="fa fa-book fa-4x"></i> <span>Invoice <span class="label pull-right bg-color-darken">99</span></span> </span> </a>
				</li>
				<li>
					<a href="gallery.html" class="jarvismetro-tile big-cubes bg-color-greenLight"> <span class="iconbox"> <i class="fa fa-picture-o fa-4x"></i> <span>Gallery </span> </span> </a>
				</li>
				<li>
					<a href="profile.html" class="jarvismetro-tile big-cubes selected bg-color-pinkDark"> <span class="iconbox"> <i class="fa fa-user fa-4x"></i> <span>My Profile </span> </span> </a>
				</li>
			</ul>
		</div>
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
		<script src="jresources/s/plugin/bootstrap-wizard/jquery.bootstrap.wizard.min.js"></script>
		<script src="resources/js/plugin/fuelux/wizard/wizard.min.js"></script>
		

		<script type="text/javascript">
		
		// DO NOT REMOVE : GLOBAL FUNCTIONS!
		
		$(document).ready(function() {
			
			pageSetUp();
			
			
	
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

		
		})

		</script>

		<!-- Your GOOGLE ANALYTICS CODE Below -->
		<script type="text/javascript">
			var _gaq = _gaq || [];
				_gaq.push(['_setAccount', 'UA-XXXXXXXX-X']);
				_gaq.push(['_trackPageview']);
			
			(function() {
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