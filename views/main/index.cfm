<cfoutput>
		<h1>Funky Person Form</h1>
		#html.startForm( action='#event.route("funky")#' )#
		
			#html.textfield( label="Your Name:", name="name", wrapper="div")#
			#html.textfield( label="Your Email:", name="email", wrapper="div")#
		
			#html.submitButton( value="Save" )#
		
		#html.endForm()#
</cfoutput>
