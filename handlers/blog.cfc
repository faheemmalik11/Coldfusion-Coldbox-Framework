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
	this.allowedMethods = {
/* 		delete: "POST",
		POST: "POST" */

	};
	/**
	 * Display a listing of the resource
	 */

	/* function preHandler(event, rc, prc, eventArguments) {
		writeDump("HELLO!!!! This is preHandler method");
	} */

	/* function postHandler(event, rc, prc, eventArguments) {
		writeDump("HELLO!!!! This is postHandler method");
	}
	function postIndex(event, rc, prc, eventArguments) {
		writeDump("HELLO!!!! This is postIndex method");
	} */

	/* function aroundHandler(event, rc, prc, eventArguments) {
		relocate("blog.delete");
	} */

	/* function preDelete(event, rc, prc, eventArguments) {
		writeDump("HELLO!!!! This is preDelete method");
	} */

	function index( event, rc, prc ){
		/* relocate("contacts.index"); */
		/* writeDump("Hello! This is inside the index method"); */
		/* relocate("contacts.data"); */
		/* event.setPrivateValue( "name", "Luis" ); */
		/* return "<h1>Hello from my handler today at :#now()#</h1>"; */
		/* var binary = FileReadBinary("/home/zubair/Downloads/Untitled.pdf");
		event.renderData(type="PDF", data=binary); */
		/* return renderView("blog/index"); */

	}

	function delete( event, rc, pr){
		return "delete is here";
	}
	function post( event, rc, pr){
		return "post is here";
	}

	function report( event, rc, prc ){
		
		event
			.sendFile(
				file = "/home/zubair/Downloads/Untitled.pdf",
				name = "UserReport.xls",
				deleteFile = true
			)
			.noRender();
	}

	function onMissingAction(event, rc, prc, eventArguments){
		response = {code: 400, message: "Bad request, Action does not exist"};
		event.renderData(data=response, type="JSON");
	}

	function onError( event, rc, prc, faultAction, exception, eventArguments ){
		response = {code: 500, message: exception.message};
		event.renderData(data=response, type="JSON");
	}

	/* function onInvalidHTTPMethod(){
		writeDump("InvalidHttpMethod!!!!");
		abort;
	} */



}

