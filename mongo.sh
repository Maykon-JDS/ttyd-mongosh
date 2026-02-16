#!/usr/bin/bash

if [ -n "$MONGO_ROOT_USERNAME" ] && [ -n "$MONGO_ROOT_PASSWORD" ] && [ -n "$MONGO_SERVICE" ] && [ -n "$MONGO_PORT" ]; then
        mongosh "mongodb://$MONGO_ROOT_USERNAME:$MONGO_ROOT_PASSWORD@$MONGO_SERVICE:$MONGO_PORT"
else
        echo "Configuration error: Required environment variables are missing: MONGO_ROOT_USERNAME, MONGO_ROOT_PASSWORD, MONGO_SERVICE, and MONGO_PORT."
fi 
