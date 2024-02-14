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



}

