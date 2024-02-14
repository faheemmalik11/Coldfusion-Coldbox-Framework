/**
 * This is your application router.  From here you can controll all the incoming routes to your application.
 *
 * https://coldbox.ortusbooks.com/the-basics/routing
 */
component {

	function configure(){
		/**
		 * --------------------------------------------------------------------------
		 * Router Configuration Directives
		 * --------------------------------------------------------------------------
		 * https://coldbox.ortusbooks.com/the-basics/routing/application-router#configuration-methods
		 */
		setFullRewrites( true );
		/**
		 * --------------------------------------------------------------------------
		 * App Routes
		 * --------------------------------------------------------------------------
		 * Here is where you can register the routes for your web application!
		 * Go get Funky!
		 */

		// A nice healthcheck route example
		route( "/healthcheck", function( event, rc, prc ){
			return "Ok!";
		} );

		// A nice RESTFul Route example
		route( "/api/echo", function( event, rc, prc ){
			return { "error" : false, "data" : "Welcome to my awesome API!" };
		} );






		// @app_routes@

		route("/home/:name").as("home").to("hello.index");
		route( "/api/contacts" )
		.as( "api.contacts" )
		.rc( "format", "json" )
		.to( "contacts.data" );

		route( "/api/user/:id?" )
		.withAction( {
			GET    = 'view',
			POST   = 'save',
			PUT    = 'update',
			DELETE = 'remove'
		} )
		.toHandler( "api.user" );

		get("/api/users","api.user.index");
		apiResources( "photos" );

		/* group( { pattern="/news", target="public.news." }, function(){
			
			route( "/recent", "recent" )
			.route( "/removed", "removed" )
			.route( "/add/:title", "add" )
			.route( "/delete/:slug", "remove" )
			.route( "/v/:slug", "view" )
			.route( "/", "index" );
		} ); */

		/* addNamespace(pattern="/blog",namespace="blog");
		route("/" )
		.withNameSpace( "blog" ).to("blog.index"); */

		/* DOES NOT WORK CORRECTLY
		route( "/blog" ).toNamespaceRouting( "blog" )
		.group( { namespace = "blog" }, function(){
			route( "/", "blog.index" )
			.route( "/:year-numeric?/:month-numeric?/:day-numeric?", "blog.archives" );
		} ); */
		post("/blog/delete").as("testing").to("blog.post");
		delete("/blog/delete").as("testing").to("blog.delete");
		post("/blog/file").as("sendFile").to("blog.report");
		
		// Conventions-Based Routing
		route( ":handler/:action?" ).end();
	}

}
