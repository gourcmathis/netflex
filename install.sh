#!/bin/bash
#
# Owners : gourcmathis, dimanlm, Trifel-Guy

# Setup global variables for the installation

owner=gourcmathis

clone_if_not_exists() {
    if [[ ! -d "$1" ]]
    then
        git clone git@github.com:$owner/$1.git
    else
        echo "Folder already exists. Aborted."
        exit
    fi
}

mongodb=nx-mongodb
api1=nx-api-imdb
api2=nx-crud
vuejs=nx-vuejs

# Database part
clone_if_not_exists $mongodb

# IMDb API part
clone_if_not_exists $api1

# API CRUD part
clone_if_not_exists $api2

# Front (VueJS) part
clone_if_not_exists $vuejs

echo "Clonning done."