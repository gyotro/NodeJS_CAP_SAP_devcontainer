<h1>Example/Tutorial of SAP CAP Framework on NodeJS, running on devcontainer</h1>

<h3>useful commands:</h3>

- cds init <project_name> --add nodejs/java --> create a project with nodejs or java
- cds env --> show env variables
- cds add tiny-sample --> add minimum bookshop entities
- cds watch --> start cap project
- tree -a --> shows the entire tree of the app
- cds add lint --> add lint to the project
- cds lint . --> verify the project
- DEBUG=all cds lint . --> same as cds lint . but showing all the steps
- CDS_CONFIG='<variable to be changed>' --> changes the value of that env variable
- cds env get <variable>
- cds env ls folders --> list all directories under folder env
- if you want to add typescript capabilities:
  - mandatory: npm i -g typescript ts-node
  - optional: in the project directory npm i -D typescript @types/express @types/node @cap-js/cds-typer
  - creating tsconfig file npx tsc --init
  - use import { Request } from '@sap/cds' to import sap/cds types for TS
- visit website http://bestofcapjs.org for more info about cap-js packages
- cds compile: offers many options, for instance: cds compile --to edmx ./srv/cat-service.cds -s all, or cds compile --to sql ./srv/cat-service.cds -s all, to view the SQL models for the CDS services.
<<<<<<< HEAD
- in order to add more functionalities on types, in your project's root, execute: cds add typer
- compile to persistent SQLITE. Add this code into package.json: "cds": { "requires": {
   "db": {
      "kind": "sqlite",
      "credentials": { "url": "db.sqlite" } 
   }
}}
then deploy with: cds deploy
=======
- install package @sap/cds-common-content for commont content of: Currency, Timezone, CountryISOCode, Langauges
- in order to deploy to the persistence, add to the package.json the folowing code:
"cds": {
    "requires": {
      "db": {
        "[ development ]": {
          "kind": "sqlite",
          "credentials": {
            "url": "bookshop.sqlite"
          }
        }
      }
    }
  }
- [ development ] is a configuration profile (it's optional and you can use whatever you want)
- cds deploy --profile development: deploy all entities (defined in the srv/cat-service.cds) into our persistence layer with profile devlopment (specifying a profile is optional)
- adding annotation @cds.persistence.skip: Denotes that the artifact isn't available in the database but eventually implemented by custom code.
- 
>>>>>>> 4919d7e2cff4e89673db9c560328050c6b9f35d4
