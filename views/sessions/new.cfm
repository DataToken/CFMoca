<!---
	Login Form:
	Only displays password reset link | rememberMe if authentication model allows it
	Runs through the validation on the tableless model in /models/Auth/Local.cfc
	You can change authentication methods via the app settings and build new Auth models to select
--->
<cfparam name="auth">
<cfparam name="usingRememberMeCookie">
<cfparam name="savedEmail">

<cfoutput>
#styleSheetLinkTag(sources="signin", head=true)#


		#startFormTag(route="authenticate", class="form-signin")#
		<!---#imageTag(source="moca.png", class="mb-4", alt="")#--->
		
		
		#errorMessagesFor(objectName="auth")#

		<cfif auth.allowRememberMe && usingRememberMeCookie>
			
			<div class="mb-3 mt-3">#gravatar(savedEmail)#</div>

			<p>Welcome back <strong>#savedEmail#</strong>. (#linkTo(text="Not You?", route="forgetme")#)</p>
			#hiddenField(objectname="auth", property="email", value=savedEmail)#
		<cfelse>
			#textField(objectname="auth", property="email", label="Email Address")#
		</cfif>

		#passwordField(objectname="auth", property="password", label="Password")#

	  	<cfif auth.allowRememberMe && !usingRememberMeCookie>
	  	 	#checkbox(objectname="auth", property="rememberme", label="Remember Me", prepend="<div>", append="</div>")#
	  	</cfif>

		#submitTag(value="Login", class="btn btn-lg btn-primary btn-block")#

		<cfif getSetting("authentication_allowRegistration") OR getSetting("authentication_allowPasswordResets")>
			<hr />
		</cfif>
		<cfif auth.allowUserRegistration && getSetting("authentication_allowRegistration")>
			<p class="float-left">#linkTo(route="register", text="Create An Account")#</p>
		</cfif>
		<cfif auth.allowPasswordReset && getSetting("authentication_allowPasswordResets")>
			<p class="float-right">#linkTo(route="Passwordreset", text="I forgot my password")#</p>
		</cfif>

		#endFormTag()#

</cfoutput>
