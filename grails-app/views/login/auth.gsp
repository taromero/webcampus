<html>
<head>
	<g:render template="/common/scripts"/>
	<title><g:message code="springSecurity.login.title"/></title>
</head>

<body class="login">
	<!-- The loading box -->
	<div id="loading-overlay"></div>
	<div id="loading">
		<span>Loading...</span>
	</div>
	
	<!-- The toolbar at the top -->
	<section id="toolbar">
		<div class="container_12">
		
			<!-- Left side -->
			<div class="left">
				<ul class="breadcrumb">
				
					<li><a href="javascript:void(0);">Mango</a></li>
					<li><a href="javascript:void(0);">Login</a></li>
					
				</ul>
			</div>
			<!-- End of .left -->
			
			<!-- Phone only items -->
			<div class="phone">
				
				<!-- User Link -->
				<li><a href="#"><span class="icon icon-home"></span></a></li>
				<!-- Navigation -->
				<li><a href="#"><span class="icon icon-heart"></span></a></li>
			
			</div><!-- End of .phone -->
			
		</div><!-- End of .container_12 -->
    </section><!-- End of #toolbar -->

	<!-- The header containing the logo -->
	<header class="container_12">	
		<div class="container">
			<!-- Your logos -->
			
			<a href="#"><img src="${resource(dir: 'images', file: 'logo.png')}" alt="Mango" width="210" height="67"></a>
			<a class="phone-title" href="login.html"><img src="${resource(dir: 'images', file: 'logo-mobile.png')}" alt="Mango" height="22" width="70" /></a>
		</div><!-- End of .container -->	
	</header><!-- End of header -->
	
	<!-- The container of the sidebar and content box -->
	<section id="login" class="container_12 clearfix">
		<form action='${postUrl}' method='post' class='box validate'>
			<div class="header">
				<h2><span class="icon icon-lock"></span>Login</h2>
			</div>
			
			<div class="content">
				<!-- Login messages -->
				<div class="login-messages">
					<g:if test='${flash.message}'>
						<div class="message failure">${flash.message}</div>
					</g:if>
				</div>				
				
				<!-- The form -->
				<div class="form-box">			
					
					<div class="row">
						<label for="login_name">
							<strong><g:message code="springSecurity.login.username.label"/></strong>
						</label>
						<div>
							<input tabindex=1 type="text" class="required noerror" name='j_username' id=login_name />
						</div>
					</div>
					
					<div class="row">
						<label for="login_pw">
							<strong><g:message code="springSecurity.login.password.label"/></strong>
							<small><a href="#" id="">Olvidé mi contraseña</a></small>
						</label>
						<div>
							<input tabindex=2 type="password" class="required noerror" name=j_password id=login_pw />
						</div>
					</div>
															
				</div><!-- End of .form-box -->				
			</div><!-- End of .content -->
			
			<div class="actions">
				<div class="left">
					<div class="rememberme">				
						<input tabindex=4 type="checkbox" name='${rememberMeParameter}' id="login_remember" <g:if test='${hasCookie}'>checked='checked'</g:if>/>
						<label for="login_remember"><g:message code="springSecurity.login.remember.me.label"/></label>
					</div>
				</div>
				<div class="right">
					<input tabindex=3 type="submit" value='${message(code: "springSecurity.login.button")}' name="login_btn" />
				</div>
			</div><!-- End of .actions -->
			
		</form><!-- End of form -->
		
	</section>
	<script type='text/javascript'>
	$$.loaded();
	<!--
	(function() {
		document.forms['loginForm'].elements['j_username'].focus();
	})();
	// -->
	</script>
</body>
</html>
