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

		route( pattern="/news", target="public.news.index" );
		route( pattern="/news/recent", target="public.news.recent" );
		route( pattern="/news/removed", target="public.news.removed" );
		route( pattern="/news/add/:title", target="public.news.add" );
		route( pattern="/news/delete/:slug", target="public.news.remove" );
		route( pattern="/news/v/:slug", target="public.news.view" );

		// Conventions-Based Routing
		route( ":handler/:action?" ).end();
	}

}
