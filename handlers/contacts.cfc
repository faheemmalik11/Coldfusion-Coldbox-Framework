/**
 * I am a new handler
 * Implicit Functions: preHandler, postHandler, aroundHandler, onMissingAction, onError, onInvalidHTTPMethod
 */
component extends="coldbox.system.EventHandler"{

    property name="contactService" inject="ContactService";
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
		prc.aContacts = contactService.getAll();
		event.setView("contacts/index");
	}

	any function data( event, rc, prc ){
		prc.aContacts = contactService.getAll();    
		event.renderData( data=prc.aContacts, formats="xml,json,pdf,html" );
	}



}

