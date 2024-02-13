/**
 * Manage photos
 * It will be your responsibility to fine-tune this template, add validations, try/catch blocks, logging, etc.
 * https://coldbox.ortusbooks.com/the-basics/routing/routing-dsl/resourceful-routes
 */
component extends="coldbox.system.EventHandler"{

	// DI
	property name="photosService" inject;

	/**
	 * Display a list of photos
	 */
	function index( event, rc, prc ){
		prc.photos = photosService.list();
		event.setView( "photos/index" );
	}

	/**
	 * Return an HTML form for creating one photo
	 */
	function new( event, rc, prc ){
		prc.photo = photosService.new();
		event.setView( "photos/new" );
	}

	/**
	 * Create a photo
	 */
	function create( event, rc, prc ){
		// csrf token validation here

		// Get and Populate
		prc.photo = populateModel( photosService.new() );
		// Validate here

		// Save
		photosService.save( prc.photo );
		// Relocate
		relocate( uri : "/photos" );
	}

	/**
	 * Show a photo
	 */
	function show( event, rc, prc ){
		event.paramValue( "id", 0 );
		prc.photo = photosService.get( rc.id );
		event.setView( "photos/show" );
	}

	/**
	 * Edit a photo
	 */
	function edit( event, rc, prc ){
		event.paramValue( "id", 0 );
		prc.photo = photosService.get( rc.id );
		event.setView( "photos/edit" );
	}

	/**
	 * Update a photo
	 */
	function update( event, rc, prc ){
		event.paramValue( "id", 0 );

		// csrf token validation here

		// Get and Populate
		prc.photo = populateModel( photosService.get( rc.id ) );
		// Validate here

		// Save
		photosService.save( prc.photo );
		// Relocate
		relocate( uri : "/photos" );
	}

	/**
	 * Delete a photo
	 */
	function delete( event, rc, prc ){
		event.paramValue( "id", 0 );

		// csrf token validation here

		// Delete
		photosService.delete( rc.id );
		// Relocate
		relocate( uri : "/photos" );
	}

}

