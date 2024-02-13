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
	this.allowedMethods = {index="GET", view="GET", save="POST", update="PUT", remove="DELETE"};

	this.users = [{id:1,"name":"zubair"},{id:2,"name":"faheem"},{id:3,"name":"muneeb"},{id:4,"name":"talha"}];
	/**
	 * Display a listing of the resource
	 */
	function index( event, rc, prc ) {
		// List all users
		return this.users;
		}
	  
	
	  function view( event, rc, prc ) {
		// View a single user
		return this.users[rc.id];
	  }
	
	  function save( event, rc, prc ) {
		// Save a user
		 this.users.push(event.getHTTPContent());
		 return {
			code:200,
			message: "user saved successfully",
			users: this.users
		};
	}
	  function update( event, rc, prc ) {
		// Save a user
		return {
			code:200,
			message: "user Updated successfully",
			users: this.users
		};
	  }
	
	  function remove( event, rc, prc ) {
		this.users.pop();
		return {
			code:200,
			message: "user removed successfully",
			users: this.users
		};
	  }

}


