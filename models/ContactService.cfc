/**
 * I am a new service
 */
component singleton {

	// DI

	/**
	 * Constructor
	 */
	ContactService function init(){
		variables.data = [
            { "id"=1, "name"="coldbox" },
            { "id"=2, "name"="superman" },
            { "id"=3, "name"="batman" }
          ];
		return this;
	}

	/**
	 * getAll
	 */
	function getAll(){
		return variables.data;
	}


}