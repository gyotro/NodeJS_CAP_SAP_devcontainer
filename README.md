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
- 
