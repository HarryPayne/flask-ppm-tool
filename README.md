# flask-ppm-tool
This is my project for learning AngularJS. It is a port of a project portfolio management tool. The original was written when the CIO said she wanted to plan six months of projects at a time. I was interested in project portfolio management. I wrote this tool to support a process where the CIO looked at potential projects quarterly, and made a decision to schedule, defer, alter, or kill each one. It also tracked the maturity of project proposals so that the CIO would have all relevant information for making a decision. And it tracked portfolio information for comparing projects with each other. Finally, it also allowed tracking projects during execution to avoid being yelled at for not having a project to develop the tool.

The tool is basically a project metadata manager and a report generator. The original was an intranet application. All employees could comment on projects, but roles determined who could create, update, and make decisions about projects. Those roles have been retained in the port. Functionality consists mainly of selecting or searching for projects, viewing search results in tabular form, viewing/updating individual projects, and stepping through the projects in a set of search results. For the port, my user experience requirements were that:

      * Each view should be bookmarkable,
      * Browser history must work, and
      * The number of requests to the server should be minimized.

The original version of this tool was as a Zope 2 site with a MySQL database for project metadata, Dojo for ajax, and an LDAP directory for authentication and role-based authorization. The port was intended to keep the functionality of the original and to make it more responsive, look better, behave more consistently, and, of course, be a single page application. The port is built using:

      * Flask and Flask extensions for WTForms, SQLAlchemy, and JSON Web Tokens
      * SQLAlchemy Object Relational Mapper
      * PostgreSQL
      * AngularJS with modules for jQuery DataTables, JSON Web Tokens, and local storage
      * Bootstrap and HTML5
      * Underscore

The only things in common between the original and the port are the LDAP directory and the basic table structure of the database. I ported legacy data from MySQL so I have about 250 real projects to test against.

The Zope original kept a description of the project attributes in a database table. Forms were generated with widgets built according the data in that table. Adding a new attribute was as simple as adding a row to that table. Vocabularies for drop downs could be added as tables matching a naming scheme. Queries for retrieving project data and for updating data for a project were also generated on the fly, closing the loop.

For the port, I wanted to use the SQLAlchemy Object Relational Mapper, which involves creating Python classes that correspond to the tables in the database. Then I could use a Python form library to generate forms and update the database in a RESTful way. For an SPA however, that does not close the loop because you can't serialize the widgets and send them out as JSON. I want to send a list of attributes only once, and then send out the values as needed. I would then take JSON data from the front end to build a form for updating the database. So I needed to develop a way to get JSON from a form library form to send to the front end, and to close the loop by updating Python form objects via JSON sent from the front end. Having some experience with Zope formlib and z3c.form, I chose Flask and WTForms just to try them out. The Zope form libraries are industrial strength, while Flask has a minimalist philosophy.

I also needed to develop the AngularJS code for generating the forms on the client side and matching up JSON project data with the fields for display, and for gathering data from the form widgets to build the JSON to send back to the server.

