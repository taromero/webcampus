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
		
		<g:render template="/common/scripts"/>
		<g:layoutHead/>
        <r:layoutResources />
        
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
		<g:render template="/common/footer"/>
        <r:layoutResources />
	</body>
</html>