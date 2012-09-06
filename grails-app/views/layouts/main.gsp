<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="WebCampus"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="format-detection" content="telephone=no">
		
		<link rel="dns-prefetch" href="http://fonts.googleapis.com" />
		<link rel="dns-prefetch" href="http://themes.googleusercontent.com" />
		<link rel="dns-prefetch" href="http://ajax.googleapis.com" />
		<link rel="dns-prefetch" href="http://cdnjs.cloudflare.com" />
		<link rel="dns-prefetch" href="http://agorbatchev.typepad.com" />
				
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'grid.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'layout.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'icons.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css/fonts', file: 'font-awesome.css')}" type="text/css">
	
		<!-- External Styles -->
		<link rel="stylesheet" href="${resource(dir: 'css/external', file: 'jquery-ui-1.8.21.custom.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css/external', file: 'jquery.chosen.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css/external', file: 'jquery.cleditor.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css/external', file: 'jquery.colorpicker.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css/external', file: 'jquery.elfinder.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css/external', file: 'jquery.fancybox.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css/external', file: 'jquery.jgrowl.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css/external', file: 'jquery.plupload.queue.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css/external/syntaxhighlighter', file: 'shCore.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css/external/syntaxhighlighter', file: 'shThemeDefault.css')}" type="text/css">
				
		<!-- Elements -->
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'elements.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'forms.css')}" type="text/css">
		
		<!-- Typographics -->
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'typographics.css')}" type="text/css">
		
		<!-- Responsive Design -->
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'media-queries.css')}" type="text/css">
		
		<!-- IE Fixes -->
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'ie-fixes.css')}" type="text/css">
		
		
		<g:layoutHead/>
        <r:layoutResources />
        
        <!-- The Scripts -->
		
		<!-- JavaScript at the top (will be cached by browser) -->
		
		<!-- Load Webfont loader -->
		<script type="text/javascript">
			window.WebFontConfig = {
				google: { families: [ 'PT Sans:400,700' ] },
				active: function(){ $(window).trigger('fontsloaded') }
			};
		</script>
		<script defer async src="https://ajax.googleapis.com/ajax/libs/webfont/1.0.28/webfont.js"></script>
		
		<!-- Essential polyfills -->
		<g:javascript src="mylibs/polyfills/modernizr-2.6.1.min.js"/>
		<g:javascript src="mylibs/polyfills/respond.js"/>
		<g:javascript src="mylibs/polyfills/matchmedia.js"/>
		<g:javascript src="mylibs/polyfills/matchmedia.js"/>
		
		<!--[if lt IE 9]>
			<g:javascript src="mylibs/polyfills/selectivizr-min.js"/>
		<![endif]-->
		<!--[if lt IE 10]>
			<g:javascript src="mylibs/charts/excanvas.js"/>
		<![endif]-->
		<!--[if lt IE 10]>
			<g:javascript src="mylibs/polyfills/classlist.js"/>
		<![endif]-->
		
		
		<!-- Grab frameworks from CDNs -->
			<!-- Grab Google CDN's jQuery, with a protocol relative URL; fall back to local if offline -->
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
		<script>window.jQuery || document.write('<script src="js/libs/jquery-1.7.2.min.js"><\/script>')</script>
		
			<!-- Do the same with jQuery UI -->
		<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.21/jquery-ui.min.js"></script>
		<script>window.jQuery.ui || document.write('<script src="js/libs/jquery-ui-1.8.21.min.js"><\/script>')</script>
		
			<!-- Do the same with Lo-Dash.js -->
		<script src="http://cdnjs.cloudflare.com/ajax/libs/lodash.js/0.4.2/lodash.min.js"></script>
		<script>window._ || document.write('<script src="js/libs/lodash.min.js"><\/script>')</script>
		
		<!-- General Scripts -->
		<g:javascript src="mylibs/jquery.hashchange.js"/>
		<g:javascript src="mylibs/jquery.idle-timer.js"/>
		<g:javascript src="mylibs/jquery.plusplus.js"/>
		<g:javascript src="mylibs/jquery.jgrowl.js"/>
		<g:javascript src="mylibs/jquery.scrollTo.js"/>
		<g:javascript src="mylibs/jquery.ui.touch-punch.js"/>
		<g:javascript src="mylibs/jquery.ui.multiaccordion.js"/>
		<g:javascript src="mylibs/number-functions.js"/>
				
		<!-- Forms -->
		<g:javascript src="mylibs/forms/jquery.autosize.js"/>
		<g:javascript src="mylibs/forms/jquery.checkbox.js"/>
		<g:javascript src="mylibs/forms/jquery.chosen.js"/>
		<g:javascript src="mylibs/forms/jquery.cleditor.js"/>
		<g:javascript src="mylibs/forms/jquery.colorpicker.js"/>
		<g:javascript src="mylibs/forms/jquery.ellipsis.js"/>
		<g:javascript src="mylibs/forms/jquery.fileinput.js"/>
		<g:javascript src="mylibs/forms/jquery.fullcalendar.js"/>
		<g:javascript src="mylibs/forms/jquery.maskedinput.js"/>
		<g:javascript src="mylibs/forms/jquery.mousewheel.js"/>
		<g:javascript src="mylibs/forms/jquery.placeholder.js"/>
		<g:javascript src="mylibs/forms/jquery.mousewheel.js"/>
		<g:javascript src="mylibs/forms/jquery.pwdmeter.js"/>
		<g:javascript src="mylibs/forms/jquery.ui.datetimepicker.js"/>
		<g:javascript src="mylibs/forms/jquery.ui.spinner.js"/>
		<g:javascript src="mylibs/forms/jquery.validate.js"/>
		<g:javascript src="mylibs/forms/uploader/plupload.js"/>
		<g:javascript src="mylibs/forms/uploader/plupload.html5.js"/>
		<g:javascript src="mylibs/forms/uploader/plupload.html4.js"/>
		<g:javascript src="mylibs/forms/uploader/plupload.flash.js"/>
		<g:javascript src="mylibs/forms/uploader/jquery.plupload.queue/jquery.plupload.queue.js"/>
			
		<!-- Charts -->
		<g:javascript src="mylibs/charts/jquery.flot.js"/>
		<g:javascript src="mylibs/charts/jquery.flot.orderBars.js"/>
		<g:javascript src="mylibs/charts/jquery.flot.pie.js"/>
		<g:javascript src="mylibs/charts/jquery.flot.resize.js"/>
		
		<!-- Explorer -->
		<g:javascript src="mylibs/explorer/jquery.elfinder.js"/>
		
		<!-- Fullstats -->
		<g:javascript src="mylibs/fullstats/jquery.css-transform.js"/>
		<g:javascript src="mylibs/fullstats/jquery.animate-css-rotate-scale.js"/>
		<g:javascript src="mylibs/fullstats/jquery.sparkline.js"/>
		
		<!-- Syntax Highlighter -->
		<g:javascript src="mylibs/syntaxhighlighter/shCore.js"/>
		<g:javascript src="mylibs/syntaxhighlighter/shAutoloader.js"/>
		
		<!-- Dynamic Tables -->
		<g:javascript src="mylibs/dynamic-tables/jquery.dataTables.js"/>
		<g:javascript src="mylibs/dynamic-tables/jquery.dataTables.tableTools.zeroClipboard.js"/>
		<g:javascript src="mylibs/dynamic-tables/jquery.dataTables.tableTools.js"/>
		
		<!-- Gallery -->
		<g:javascript src="mylibs/gallery/jquery.fancybox.js"/>
		
		<!-- Tooltips -->
		<g:javascript src="mylibs/tooltips/jquery.tipsy.js"/>
		
		<!-- Do not touch! -->
		<g:javascript src="mango.js"/>
		<g:javascript src="plugins.js"/>
		<g:javascript src="script.js"/>
		
		<!-- Your custom JS goes here -->
		<g:javascript src="application.js"/>
	</head>
	<body>	
		<!-- The toolbar at the top -->
		<section id="toolbar">
			<div class="container_12">
							
				<!-- Right side -->
				<div class="right">
					<ul>
					
						<li><a href="pages_profile.html"><span class="icon i14_admin-user"></span>Profile</a></li>
						
						<li>
							<a href="#"><span>3</span>Messages</a>
							
							<!-- Mail popup -->
							<div class="popup">
								<h3>New Messages</h3>
								
								<!-- Button bar -->
								<a class="button flat left grey" onclick="$(this).parent().fadeToggle($$.config.fxSpeed)">Close</a>
								<a class="button flat right" href="tables_dynamic.html">Inbox</a>
								
								<!-- The mail content -->
								<div class="content mail">
									<ul>
									
										<li>
											<div class="avatar">
												<img src="${resource(dir: 'images/elements/mail', file: 'avatar.png')}" alt="You"/>
											</div>
											<div class="info">
												<strong>John Doe</strong>
												<span>Thanks for your theme!</span>
												<small>09:32 am</small>
											</div>
											<div class="text">
												<p>Hey Admin!</p>
												<p>I've purchased your admin template and it's great :)</p>
												<p>A happy customer</p>
												<div class="actions">
													<a href="javascript:void(0);" class="left open-message-dialog">Reply</a>
													<a onclick="$(this).parent().parent().parent().slideToggle($$.config.fxSpeed)" class="red right" href="javascript:void(0);">Delete</a>
												</div>
											</div>
										</li>
										
										<li>
											<div class="avatar">
												<img src="${resource(dir: 'images/elements/mail', file: 'mail.png')}" alt="You" height=40 width=40/>
											</div>
											<div class="info">
												<strong>System</strong>
												<span>New comment</span>
												<small>08:47 am</small>
											</div>
											<div class="text">
												<p>Hello,</p>
												<p>There is one new comment on your theme.</p>
												<p>Go to Comments page to see it.</p>
												<div class="actions">
													<a href="javascript:void(0);" class="left open-message-dialog">Reply</a>
													<a onclick="$(this).parent().parent().parent().slideToggle($$.config.fxSpeed)" class="red right" href="javascript:void(0);">Delete</a>
												</div>
											</div>
										</li>
										
										<li>
											<div class="avatar">
												<img src="${resource(dir: 'images/elements/mail', file: 'mail.png')}" alt="You" height=40 width=40/>
											</div>
											<div class="info">
												<strong>Stranger</strong>
												<span>[SPAM] ---</span>
												<small>Yesterday</small>
											</div>
											<div class="text">
												<p>[...]</p>
												<div class="actions">
													<a href="javascript:void(0);" class="left open-message-dialog">Read</a>
													<a onclick="$(this).parent().parent().parent().slideToggle($$.config.fxSpeed)" class="red right" href="javascript:void(0);">Delete</a>
												</div>                            
											</div>
										</li>
										
									</ul>
								</div><!-- End of .contents -->
								
							</div><!-- End of .popup -->
						</li><!-- End of li -->
						
						<li class="space"></li>
						
						<li><a href="javascript:void(0);" id="btn-lock"><span>--:--</span>Lock screen</a></li>
						
						<li class="red"><a href="login.html">Logout</a></li>
						
					</ul>
				</div><!-- End of .right -->
				
				<!-- Phone only items -->
				<div class="phone">
					
					<!-- User Link -->
					<li><a href="pages_profile.html"><span class="icon icon-user"></span></a></li>
					<!-- Navigation -->
					<li><a class="navigation" href="#"><span class="icon icon-list"></span></a></li>
				
				</div><!-- End of phone items -->
				
			</div><!-- End of .container_12 -->
		</section><!-- End of #toolbar -->
	
	
		<header class="container_12">
			<a href="dashboard.html"><img src="${resource(dir: 'images', file: 'harvard.png')}" alt="Webcampus" width="60" height="60"/></a>
			<a class="phone-title" href="dashboard.html"><img src="${resource(dir: 'images', file: 'logo-mobile.png')}" alt="Webcampus" width="70" height="22"/></a>
			<div class="buttons">
				<a href="#">
					<span class="icon icon-sitemap"></span>
					Seccion 1
				</a>
				<a href="#">
					<span class="icon icon-list-alt"></span>
					Seccion 2
				</a>
				<a href="#">
					<span class="icon icon-table"></span>
					Seccion 3
				</a>
			</div><!-- End of .buttons -->
		</header><!-- End of header -->
		
		<!-- The container of the sidebar and content box -->
		<div role="main" id="main" class="container_12 clearfix">
			<!-- The blue toolbar stripe -->
			<section class="toolbar">
				<div class="user">
					<div class="avatar">
						<img src="${resource(dir: 'images/layout/content/toolbar/user', file: 'avatar.png')}"/>
						<span>3</span>
					</div>
					<span>Administrator</span>
					<ul>
						<li><a href="javascript:$$.settings();">Settings</a></li>
						<li><a href="#">Profile</a></li>
						<li class="line"></li>
						<li><a href="#">Logout</a></li>
					</ul>
				</div>
				<ul class="shortcuts">
							
					<li>
						<a href="javascript:void(0);"><span class="icon i24_user-business"></span></a>
						<!-- Possible sizes: small/medium/large -->
						<div class="small">
							<h3>Create a User</h3>
							
							<!-- Button bar -->
							<button class="button flat left grey" onclick="$(this).parent().fadeToggle($$.config.fxSpeed).parent().removeClass('active')">Close</button>
							<button class="button flat right" onclick="$(this).parent().fadeToggle($$.config.fxSpeed).parent().removeClass('active')">Create</button>
							
							<div class="content">
								<form class="full grid">
									<div class="row no-bg">
										<p class="_100 small">
											<label for="p1_username">Username</label>
											<input type="text" name=p1_username id=p1_username />
										</p>
									</div>
									<div class="row no-bg">
										<p class="_50 small">
											<label for="p1_firstname">Firstname</label>
											<input type="text" name=p1_firstname id=p1_firstname />
										</p>
										<p class="_50 small">
											<label for="p1_lastname">Lastname</label>
											<input type="text" name=p1_lastname id=p1_lastname />
										</p>
									</div>
								</form>
							</div>
						</div><!-- End of popup -->
					</li>					
				</ul><!-- End of .shortcuts -->
				
				<input type="search" data-source="extras/search.php" placeholder="Search..." autocomplete="off" class="tooltip" title="e.g. Peach" data-gravity=s>
			</section><!-- End of .toolbar-->
			<!-- The sidebar -->
			<aside>
				<div class="top">
				
					<!-- Navigation -->
					<nav><ul class="collapsible accordion">
					
						<li class="current"><a href="dashboard.html"><img src="${resource(dir: 'images/icons/packs/fugue/16x16', file: 'dashboard.png')}" alt="" height=16 width=16/>Dashboard</a></li>
						
						<li>
							<a href="javascript:void(0);"><img src="${resource(dir: 'images/icons/packs/fugue/16x16', file: 'ui-layered-pane.png')}" alt="" height=16 width=16/>Alumnos</a>
							<ul>
								<li><a href="ui_general.html"><span class="icon icon-list"></span>Exámenes</a></li>
								<li><a href="ui_grid.html"><span class="icon icon-th"></span>Asistencia</a></li>
							</ul>
						</li>
						
						<li>
							<a href="javascript:void(0);"><img src="${resource(dir: 'images/icons/packs/fugue/16x16', file: 'application-form.png')}" alt="" height=16 width=16/>Archivos<span class="badge">4</span></a>
							<ul>
								<li><a href="forms.html"><span class="icon icon-list-alt"></span>Subir archivo</a></li>
								<li><a href="forms_validation.html"><span class="icon icon-warning-sign"></span>blabla</a></li>
								<li><a href="forms_validation.html"><span class="icon icon-warning-sign"></span>blabla2</a></li>
							</ul>
						</li>						
												
					</ul></nav><!-- End of nav -->				
				</div><!-- End of .top -->	
				
			</aside><!-- End of sidebar -->			
		
			<section id="content" class="container_12 clearfix" data-sort=true>
				<g:layoutBody/>
			</section><!-- End of #content -->
		</div><!-- End of #main -->
			<!-- The footer -->
		<footer class="container_12">
			<ul class="grid_6">
				<li><a href="#">Info</a></li>
				<li><a href="#">Contact</a></li>
			</ul>
			
			<span class="grid_6">
				Copyright &copy; 2012 WebCampus
			</span>
		</footer><!-- End of footer -->
		<!-- Spawn $$.loaded -->
		<script>
			$$.loaded();
		</script>
		
		<!-- Prompt IE 6 users to install Chrome Frame. Remove this if you want to support IE 6.
		   chromium.org/developers/how-tos/chrome-frame-getting-started -->
		<!--[if lt IE 7 ]>
		<script defer src="http://ajax.googleapis.com/ajax/libs/chrome-frame/1.0.3/CFInstall.min.js"></script>
		<script defer>window.attachEvent('onload',function(){CFInstall.check({mode:'overlay'})})</script>
		<![endif]-->
		
        <r:layoutResources />
	</body>
</html>