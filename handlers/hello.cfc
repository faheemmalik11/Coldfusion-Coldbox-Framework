/**
 * I am a new handler
 * Implicit Functions: preHandler, postHandler, aroundHandler, onMissingAction, onError, onInvalidHTTPMethod
 */
component extends="coldbox.system.EventHandler"{

	this.prehandler_only 	= "";
	this.prehandler_except 	= "";
	this.posthandler_only 	= "";
	this.posthandler_except = "";
	this.aroundHandler_only = "";
	this.aroundHandler_except = "";
	this.allowedMethods = {};

	/**
	 * Display a listing of the resource
	 */
	function index( event, rc, prc ){
		writeDump(event.getCurrentRoute());
		writeDump(event.getCurrentRouteName());
		writeDump(event.getCurrentRoutedURL());
		writeDump(event.getCurrentRoutedNamespace());
		<!--- writeDump(event); --->
		// event.paramValue("name","nobody");
		prc.when = dateFormat( now(), "full" );
		event.setView(view="hello/index",layout="funky");
	}



}

