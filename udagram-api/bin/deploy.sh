cd ./www
eb init udagram-api-dev --region $AWS_REGION --platform node.js
eb create
eb use udagram-api-dev
eb setenv  POSTGRES_HOST=$POSTGRES_HOST PORT=$PORT POSTGRES_USERNAME=$POSTGRES_USERNAME POSTGRES_PASSWORD=$POSTGRES_PASSWORD POSTGRES_DB=$POSTGRES_DB DB_PORT=$DB_PORT AWS_REGION=$AWS_REGION URL=$URL JWT_SECRET=$JWT_SECRET AWS_BUCKET=$AWS_BUCKET AWS_PROFILE=$AWS_PROFILE AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION
eb deploy 
# eb use POSTGRES_HOST PORT POSTGRES_USERNAME POSTGRES_PASSWORD POSTGRES_DB DB_PORT AWS_REGION URL JWT_SECRET AWS_BUCKET
# eb use udagram-api2-dev
# eb deploy udagram-api2-dev RDS_DIALECT=$RDS_DIALECT


