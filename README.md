# Coldfusion-Coldbox-Framework
[Installation](#installation)
[Creating App](#creating-app)
[Reinitializing the Application](reinitializing-the-Application)
[Creating Handler](#creating-handler)
[Building Links](#building-links)
[Routing](#routing)
[Working with Events](#working-with-events)
[Adding A Layout](#adding-a-layout)
[Adding A Model](#adding-a-model)

## Installation
Install cli:
```sh
install coldbox-cli
```
Install coldbox:
```sh
install coldbox
```

## Creating App
```sh
coldbox create app
```

## Reinitializing the Application

You can tell the framework to reinit or restart the application for you via the URL by leveraging the special URL variable fwreinit.
```sh 
http://localhost:{port}/?fwreinit=1
```
You can also use CommandBox to reinit the application:
```sh 
coldbox reinit
```

## Creating Handler

```sh
coldbox create handler name="hello" actions="index" --open
```
This will generate the following files:
* A new handler called hello.cfc inside of the handlers folder
* A view called index.cfm in the views/hello folder 
* An integration test at tests/specs/integration/helloTest.cfc. 

## Building Links

You can easily build links with ColdBox by using two methods:
1. ```event.buildLink()``` - Build links to events or URL routes
2. ```event.route()``` - Build links to specifically named routes

## Routing
Let's create a /home route that will execute the `main.index` event and update our view to change the building of the URL via route(). Let's open the config/Router.cfc

// @app_routes@
```sh
route( "/home" ).as( "home" ).to( "main.index" );
```
// Conventions-Based Routing
```route( ":handler/:action?" ).end();```

## Working with Events
Event handlers are the controller layer in ColdBox and is what you will be executing via the URLor a FORMpost. All event handlers are singletons, which means they are cached for the duration of the application, so always remember to var scope your variables in your functions.

Every action in ColdBox receives three arguments:
1. `event` - An object that models and is used to work with the current request, called the request context.
2. `rc` - A struct that contains both URL/FORM variables (unsafe data)
3. `prc` - A secondary struct that is private only settable from within your application (safe data)

### Setting Views - Default Layout
This line event.setView( "main/index" ) in the index action told ColdBox to render a view back to the user found in views/main/index.cfm. 

ColdBox also has the concept of layouts, which are essentially reusable views that can wrap up other views or layouts.  They allow you to reuse content to render views/layouts inside a specific location in the CFML content.  By convention, ColdBox looks for a layout called layouts/Main.cfm.  This is yet another convention, the default layout.  Your application can have many layouts or non-layouts at all.

### Routing Params
Now let's expect the name as part of the URL pattern; open the config/Router.cfc and let's add another route:
```sh
route( "/hello/:name" ).as( "hello" ).to( "hello" )
```

## Adding A Layout

The layout has everything you want to wrap views or other layouts with.  You can use our rendering methods to do inline renderings or tell ColdBox where the set view should render:

* `view()` - Render the set view via event.setView()
* `view( name: "toolbar" )` - Render a named view
* `view( "partials/footer" )` - Render a explicit view
* `layout( name )` - Render another layout within this layout

### Creating A Layout
```sh
# Create a Funky layout
coldbox create layout name="Funky" --open
```

## Adding A Model

```sh
coldbox create service name="ContactService" methods="getAll" --open
```