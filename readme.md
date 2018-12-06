
Postcodes are from http://www.abs.gov.au/AUSSTATS/abs@.nsf/DetailsPage/1270.0.55.003July%202011?OpenDocument

Projection used is http://spatialreference.org/ref/epsg/gda94/

To generate geojson:

```
shp2json 1270055003_poa_2011_aust_shape/POA_2011_AUST.shp -o postcodes.json
```

To preview as svg:

```
geo2svg -w 960 -h 960 < postcodes.json > postcodes.svg
```

To save a bunch of file size and make rendering way quicker, you can simplify it at https://mapshaper.org/

run with `http-server`