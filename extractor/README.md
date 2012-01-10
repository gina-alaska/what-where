extractor
=========

Initial tool started to clip out a box (50k x 50k) around an Alaska Albers 
point (a village in alaska): *geonames_aa.csv*

The input files to clip from were in a magic location (source data for the
alaskamapped.org WMS services).

clipum
-------

takes a CSV file done as: GEONAME,POINT_X,POINT_Y with points in EPSG:3338
does a 50km buffer (by default, use -b to change) and clips that out of
each of the images in the source directory, putting clipped result in 
the specified output-dir (creates that dir if it does not exist)

    *clipum* [-b 50]  _input-csv_ _output-dir_

