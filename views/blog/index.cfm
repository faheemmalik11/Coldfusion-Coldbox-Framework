<cfoutput>
    <!--- <p>#event.getValue("name")#</p> --->
    <form method="POST" action="#event.route('testing')#">
        <input type="hidden" name="_method" value="DELETE" />
        <button type="submit">Delete</button>
    </form>
<!---     <cfdump  var="This is inside the index"> --->
    <!--- <form method="POST" action="#event.route("sendFile")#">
        <button type="submit">Download File</button>
    </form> --->
</cfoutput>