cd ./www
eb init --region $AWS_REGION --platform node.js
eb use 
eb setenv POSTGRES_HOST=$POSTGRES_HOST PORT=$PORT POSTGRES_USERNAME=$POSTGRES_USERNAME POSTGRES_PASSWORD=$POSTGRES_PASSWORD POSTGRES_DB=$POSTGRES_DB DB_PORT=$DB_PORT RDS_DIALECT=$RDS_DIALECT AWS_REGION=$AWS_REGION URL=$URL JWT_SECRET=$JWT_SECRET AWS_BUCKET=$AWS_BUCKET
eb use POSTGRES_HOST PORT POSTGRES_USERNAME POSTGRES_PASSWORD POSTGRES_DB DB_PORT AWS_REGION URL JWT_SECRET AWS_BUCKET
eb deploy 


