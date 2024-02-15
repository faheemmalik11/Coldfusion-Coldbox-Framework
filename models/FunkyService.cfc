/**
 * I am a new service
 */
component accessors="true"{

	property name="name";
    property name="email";

	// DI

	/**
	 * Constructor
	 */
	FunkyService function init(){
		setName('');
        setEmail('');
		return this;
	}

	function add (a,b){
		return a+b;
	}

    function getFunkyData(){
        var data = [
            {name="Luis", age="33"},
            {name="Jim", age="99"},
            {name="Alex", age="1"},
            {name="Joe", age="23"}
        ];
        return data;
    }

}