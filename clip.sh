#!/bin/sh

set -x

# Take a city name and makes a city directory with the city,
# parcels and streets.
#
# REQUIRES:
# - working copy of GDAL ogr2ogr and ogrinfo. See http://www.gdal.org
# - Local (unzipped) copy of ACTIVE_PARCELS_APN in working directory
# - Local (unzipped) copy of JURISDICTIONAL BOUNDARIES folder
# - Local (unzipped) copy of SAN MATEO COUNTY STREETS folder
#
# Note, the city name must be an exact match --- 'EAST PALO ALTO', not
# 'East Palo Alto'. You'll also see a bunch of warning messages about
# "Value '-' of field CITY.UNINCORPOR parsed incompletely to integer 0."
# 

city="$1"
if [ "$city" = "" ]; then
    echo "must supply a city name" 1>&2
    exit 1
fi

known=`ogrinfo -geom=no -sql "select NAME from CITY WHERE NAME ='$city'" JURISDICTIONAL\ BOUNDARIES/CITY.shp | grep NAME | grep = | wc -l`
if [ "$known" != 1 ]; then
    echo "unrecognized city '$city' --- please pick something from following list" 1>&2
    ogrinfo -geom=no -sql "select NAME from CITY WHERE NAME ='$city'" JURISDICTIONAL\ BOUNDARIES/CITY.shp | grep NAME | grep = | cut -d= -f2
    exit 1
fi

city_underscore=`echo $city | sed -e 's/ /_/g'`
mkdir $city_underscore
ogr2ogr -where "NAME = '$city'" ${city_underscore}/city.shp JURISDICTIONAL\ BOUNDARIES/CITY.shp

ogr2ogr -clipsrc ${city_underscore}/city.shp ${city_underscore}/parcels.shp ACTIVE_PARCELS_APN.shp
echo $?
ogr2ogr -clipsrc ${city_underscore}/city.shp ${city_underscore}/streets.shp SAN\ MATEO\ COUNTY\ STREETS/STREETS.shp
echo $?
