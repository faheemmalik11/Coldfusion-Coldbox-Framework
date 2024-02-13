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
	}

	/**
	 * recent
	 */
	function recent( event, rc, prc ){
		writeOutput("THIS IS RECENT");
	}

	/**
	 * removed
	 */
	function removed( event, rc, prc ){
		writeOutput("THIS IS REMOVED");
	}

	/**
	 * add
	 */
	function add( event, rc, prc ){
		writeOutput("THIS IS ADD");
	}

	/**
	 * remove
	 */
	function remove( event, rc, prc ){
		writeOutput("THIS IS REMOVE");
	}

	/**
	 * view
	 */
	function view( event, rc, prc ){
		writeOutput("THIS IS VIEW");
	}



}

