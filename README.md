# Udagram

This application is provided to you as an alternative starter project if you do not wish to host your own code done in the previous courses of this nanodegree. The udagram application is a fairly simple application that includes all the major components of a Full-Stack web application.

## Getting Started

1. Clone this repo locally into the location of your choice.
1. Move the content of the udagram folder at the root of the repository as this will become the main content of the project.
1. Open a terminal and navigate to the root of the repo
1. follow the instructions in the installation step

The project can run but is missing some information to connect to the database and storage service. These will be setup during the course of the project


### Steps for Running Project Locally:
Upload the code or clone the repository 
Add .env file with with your variables
    POSTGRES_HOST= **********
    PORT=********
    POSTGRES_USERNAME=********
    POSTGRES_PASSWORD=********
    POSTGRES_DB=********
    DB_PORT=********
    AWS_REGION=********
    AWS_PROFILE=********
    AWS_BUCKET=***********
    URL=********
    JWT_SECRET=********
    AWS_ACCESS_KEY_ID=********
    EB_ENV=********
    AWS_SECRET_ACCESS_KEY=********
    AWS_DEFAULT_REGION=********

Then run npm install for both front and back , create your database then run the server and the clint side should route to localhost:4200


http://elasticbeanstalk-us-east-1-446394258019.s3-website-us-east-1.amazonaws.com


### to view deployment on S3 [Front End Environment]
S3 Bucket: `udagram2`
S3 URL: 'http://udagram2.s3-website-us-east-1.amazonaws.com'

![This is an image](https://github.com/HendMohammed90/udagram-project/blob/38dc5a21827cc9f351d0ea8876bed801ff2648c1/Docs/S3/Screen%20Shot%202022-05-14%20at%204.01.15%20PM.png)


### to view deployment on Elastic Beanstalk [Back End Environment]
Application Name: `udagram-api`  
Environment Name: `udagram-api-devv`
URL: `http://udagram-api-devv.us-east-1.elasticbeanstalk.com/`

![This is an image](https://github.com/HendMohammed90/udagram-project/blob/master/Docs/%20EB/Screen%20Shot%202022-05-14%20at%202.21.20%20PM.png)


###  to view deployment on RDS Database [Database Environment]
DB URL: `database-1.cw7cvla6dmvg.us-east-1.rds.amazonaws.com`

![This is an image](https://github.com/HendMohammed90/udagram-project/blob/1300db723e7b55bfd8afd6c42b61b167c95056bc/Docs/RDS/Screen%20Shot%202022-05-13%20at%204.58.07%20PM.png)


### Deployment Process In CircleCi:
![This is an image](https://github.com/HendMohammed90/udagram-project/blob/master/Docs/CircilCi/Screen%20Shot%202022-05-14%20at%209.39.07%20PM.png)


### The App Structure Diagram:
![This is an image](https://github.com/HendMohammed90/udagram-project/blob/master/Docs/1.jpg)


###  The CircleCi PipeLine:

![This is an image](https://github.com/HendMohammed90/udagram-project/blob/87820a7f51935c18bd297a41877e9c807ec5eb6d/Docs/CircleCi%20.jpg)


### Package.json SCRIPTS:

  "backend:install": "cd udagram-api && npm install",
  "frontend:install": "cd udagram-frontend && npm install",
  "backend:build": "cd udagram-api && npm run build",
  "frontend:build": "cd udagram-frontend && npm run build",
  "backend:test": "cd udagram-api && npm run test",
  "frontend:test": "cd udagram-frontend && npm run test",
  "backend:deploy": "cd udagram-api && npm run deploy",
  "frontend:deploy": "cd udagram-frontend && npm run deploy"

### APP Dependencies

- Node v14.15.1 (LTS) or more recent. While older versions can work it is advisable to keep node to latest LTS version

- npm 6.14.8 (LTS) or more recent, Yarn can work but was not tested for this project

- AWS CLI 

- A RDS database running Postgres.

- A S3 bucket for hosting uploaded pictures.


Serve & Build & Deployment Environment Requirements:

    NodeJS v14.15.1 (LTS) or more recent.
    npm 6.14.8 (LTS) or more recent

AWS Requirements: 

    AWS CLI 
    AWS IAM User configure with permissions Administrator Access for deploying both front and back end apps
    AWS RDS database running Postgres
    AWS S3 bucket for hosting uploaded pictures
    AWS Elastic Beanstalk Running Node.js 14 or more recent.

CI/CD Pipeline:

    CircleCi
    GitHub Repo


### infrastructure

FrontEnd Environment: 
    S3 BucketName: udagram2
    S3 URL: http://udagram2.s3-website-us-east-1.amazonaws.com

BackEnd Environment: 
    DB ENDPOINT: database-1.cw7cvla6dmvg.us-east-1.rds.amazonaws.com
    Application Name [EB_APP]: udagram-api
    Environment Name [EB_ENV]: udagram-api-devv
    EB URL: http://udagram-api-devv.us-east-1.elasticbeanstalk.com/

Deployment Pipeline Environment:
    CircleCi
    GitHub Repo: https://github.com/HendMohammed90/udagram-project

```

### Installation

Provision the necessary AWS services needed for running the application:

1. In AWS, provision a publicly available RDS database running Postgres. <Place holder for link to classroom article>
1. In AWS, provision a s3 bucket for hosting the uploaded files. <Place holder for think to classroom article>
1. Export the ENV variables needed or use a package like [dotnev](https://www.npmjs.com/package/dotenv)/.
1. From the root of the repo, navigate udagram-api folder `cd starter/udagram-api` to install the node_modules `npm install`. After installation is done start the api in dev mode with `npm run dev`.
1. Without closing the terminal in step 1, navigate to the udagram-frontend `cd starter/udagram-frontend` to install the node_modules `npm install`. After installation is done start the api in dev mode with `npm run start`.

## Testing

This project contains two different test suite: unit tests and End-To-End tests(e2e). Follow these steps to run the tests.

1. `cd starter/udagram-frontend`
1. `npm run test`
1. `npm run e2e`

There are no Unit test on the back-end

### Unit Tests:

Unit tests are using the Jasmine Framework.

### End to End Tests:

The e2e tests are using Protractor and Jasmine.

## Built With

- [Angular](https://angular.io/) - Single Page Application Framework
- [Node](https://nodejs.org) - Javascript Runtime
- [Express](https://expressjs.com/) - Javascript API Framework

## License

[License](LICENSE.txt)
