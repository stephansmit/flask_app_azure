#!/bin/bash
APP_NAME=flaskPython
APP_PLAN_NAME="${APP_NAME}Plan"
RESOURCE_GROUP=flaskPythonApp
LOCATION=northeurope


# Create a Resource Group
az group create \
        --location northeurope \
        --name $RESOURCE_GROUP

# Create an App Service Plan
az appservice plan create \
        --resource-group $RESOURCE_GROUP \
        --name $APP_PLAN_NAME \
        --location $LOCATION \
        --is-linux \
        --sku B1

# Create a Web App
az webapp create \
        --name $APP_NAME \
        --plan $APP_PLAN_NAME \
        --resource-group $RESOURCE_GROUP \
        --runtime "python|3.6" \
        --startup-file startup.txt
