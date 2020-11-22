#!/bin/bash
APP_NAME=flaskPython
APP_PLANE_NAME="${APP_NAME}plan"
RESOURCE_GROUP=flaskPythonApp
LOCATION=northeurope

# Create a Resource Group
az group create –name $RESOURCE_GROUP –location $LOCATION

# Create an App Service Plan
az appservice plan create –name $APP_PLAN_NAME –resource-group $RESOURCE_GROUP –location $LOCATION –is-linux –sku B1

# Create a Web App
az webapp create –name $APP_NAME –plan $APP_PLAN_NAME –resource-group $RESOURCE_GROUP –runtime "python|3.6" --startup-file startup.txt
