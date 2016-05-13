<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Banco de Testes</title>
	<!-- Tell the browser to be responsive to screen width -->
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<!-- Bootstrap 3.3.5 -->
	<r:external rel="stylesheet" uri="/bootstrap/css/bootstrap.min.css" />
	<!-- Font Awesome -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
	<!-- Ionicons -->
	<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
	<!-- Theme style -->
	<r:external rel="stylesheet" uri="/css/AdminLTE.min.css" />
	<!-- iCheck -->
	<r:external rel="stylesheet" uri="/plugins/iCheck/square/blue.css" />

	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="hold-transition login-page">
<div class="login-box">
	<div class="login-logo">
		<a href="../../index2.html"><b>Banco de Testes</b></a>
	</div><!-- /.login-logo -->
	<div class="login-box-body">
		<p class="login-box-msg">Sign in to start your session</p>

			<g:if test='${flash.message}'>
                <div class="alert alert-danger">
				    <div class='login_message'>${flash.message}</div>
                </div>
			</g:if>

		<form action='${postUrl}' method='POST' id='loginForm'  autocomplete='off'>
			<div class="form-group has-feedback">
				<input type="email" class="form-control" placeholder="Email" name='j_username' id='username'>
				<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
			</div>
			<div class="form-group has-feedback">
				<input type="password" class="form-control" placeholder="Password" name='j_password' id='password'>
				<span class="glyphicon glyphicon-lock form-control-feedback"></span>
			</div>
			<div class="row">
				<div class="col-xs-8">
					<div class="checkbox icheck">
						<label>
							<input type="checkbox" name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>
							<label for='remember_me'><g:message code="springSecurity.login.remember.me.label"/></label>
						</label>
					</div>
				</div><!-- /.col -->
				<div class="col-xs-4">
					<button type="submit" class="btn btn-primary btn-block btn-flat" >${message(code: "springSecurity.login.button")}</button>
				</div><!-- /.col -->
			</div>
		</form>

		<a href="#">I forgot my password</a><br>
		<a href="register.html" class="text-center">Register a new membership</a>

	</div><!-- /.login-box-body -->
</div><!-- /.login-box -->

<!-- jQuery 2.1.4 -->
<r:external uri="/plugins/jQuery/jQuery-2.1.4.min.js"></r:external>
<!-- Bootstrap 3.3.5 -->
<r:external uri="/bootstrap/js/bootstrap.min.js"></r:external>
<!-- iCheck -->
<r:external uri="/plugins/iCheck/icheck.min.js"></r:external>
<script>
	$(function () {
		$('input').iCheck({
			checkboxClass: 'icheckbox_square-blue',
			radioClass: 'iradio_square-blue',
			increaseArea: '20%' // optional
		});
	});
</script>
</body>
</html>
