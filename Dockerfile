FROM remotepixel/amazonlinux-gdal:2.4.1

WORKDIR /tmp

ENV PACKAGE_PREFIX /tmp/python

# Install dependencies
RUN pip3 install . --no-binary numpy,rasterio,shapely,sat-search -t $PACKAGE_PREFIX -U
