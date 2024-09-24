This R script uses the raster library to clip single resolution geotiff raster surfaces  into 5 depth ranges (0-40m depths, 36-80m depths, 72-160m depths, 144-320m depths and deeper than 300m depths) to match NOAA object detection multibeam coverage grid-resolution thresholds (NOAA HSSD, 2022) as a function of depth range.

It then writes out a new raster file with the depth range appended to the original filename. 

 
