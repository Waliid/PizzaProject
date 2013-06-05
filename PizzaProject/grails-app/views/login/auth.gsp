<html>

<head>
<title><g:message code='spring.security.ui.login.title'/></title>
<meta name='layout' content='main'/>
</head>

<body>

<p/>

<div class="login s2ui_center ui-corner-all" style='text-align:left'>
	<div class="login-inner">
		<g:if test="${flash.message }">
			<div class="error">
			<div class="alert alert-error">
			  <strong>${flash.message }</strong>
			</div>
				
			</div>
		</g:if>
		<form class="form-horizontal"  action='${postUrl}' method='POST' id="loginForm" name="loginForm" autocomplete='off'>
			<div class="control-group">
				<label class="control-label" for="inputEmail"></label>
				<div class="controls">
					<input type="text" name="j_username" id="username" size="20"  placeholder="Login">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="inputPassword"></label>
				<div class="controls">
					<input type="password" name="j_password" id="password" size="20" placeholder="Password">
				</div>
			</div>
			
			<div class="control-group">
				<div class="controls">
					<input class="btn" form='loginForm' type="submit" value="Sign in"><br>
					<input class="checkbox" type="checkbox" name="${rememberMeParameter}" id="remember_me"> Remember me<br>
					<g:link elementId='register' controller='register'>Register</g:link> |
					<g:link controller='register' action='forgotPassword'><g:message code='Forgot password'/></g:link>
				</div>
			</div>
		</form>
	<!--
	<form action='${postUrl}' method='POST' id="loginForm" name="loginForm" autocomplete='off'>
	<div class="sign-in">

	<h1><g:message code='spring.security.ui.login.signin'/></h1>

	<table>
		<tr>
			<td><label for="username"><g:message code='spring.security.ui.login.username'/></label></td>
			<td><input name="j_username" id="username" size="20" /></td>
		</tr>
		<tr>
			<td><label for="password"><g:message code='spring.security.ui.login.password'/></label></td>
			<td><input type="password" name="j_password" id="password" size="20" /></td>
		</tr>
		<tr>
			<td colspan='2'>
				<input type="checkbox" class="checkbox" name="${rememberMeParameter}" id="remember_me" checked="checked" />
				<label for='remember_me'><g:message code='spring.security.ui.login.rememberme'/></label> |
				<span class="forgot-link">
					<g:link controller='register' action='forgotPassword'><g:message code='spring.security.ui.login.forgotPassword'/></g:link>
				</span>
			</td>
		</tr>
		<tr>
			<td colspan='2'>
				<s2ui:linkButton elementId='register' controller='register' messageCode='spring.security.ui.login.register'/>
				<s2ui:submitButton elementId='loginButton' form='loginForm' messageCode='spring.security.ui.login.login'/>
			</td>
		</tr>
	</table>

	</div>
	</form>-->
	</div>
</div>

<script>
$(document).ready(function() {
	$('#username').focus();
});

<s2ui:initCheckboxes/>

</script>

</body>
</html>
