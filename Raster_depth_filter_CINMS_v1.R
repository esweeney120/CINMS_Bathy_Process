####Usage####
#The purpose of this code is to do the following:
####Filter to depth band ranges
####Writes new raster file

####Libraries####
library(raster)

####Directories and Files####
#User input:
setwd("C:")

imported_raster <- raster(file.choose())
rast_name <- names(imported_raster)

####Filter Raster by Depth####
#0 - 40m WD - 2m XY
filter_raster <- imported_raster >= -40.00000 
filter_raster2 <- mask(imported_raster, filter_raster, maskvalue = 0)

#Create Raster Filename
Res2m_filename <- paste(getwd(), "/", rast_name, "_0_40mWD.tif", sep="")
writeRaster(filter_raster2, filename=Res2m_filename, options="INTERLEAVE=BAND", overwrite=TRUE)
#writeRaster(filter_raster2, filename=file.choose(), options="INTERLEAVE=BAND", overwrite=TRUE)


#36 - 80m WD - 4m XY
filter_raster_36_80_mask <- imported_raster <= -36.00000 & imported_raster >= -80.00000 
filter_raster_36_80_data <- mask(imported_raster, filter_raster_36_80_mask, maskvalue = 0)

#Create Raster Filename
Res4m_filename <- paste(getwd(), "/", rast_name, "_36_80mWD.tif", sep="")
writeRaster(filter_raster_36_80_data, filename=Res4m_filename, options="INTERLEAVE=BAND", overwrite=TRUE)
#writeRaster(filter_raster_36_80_data, filename=file.choose(), options="INTERLEAVE=BAND", overwrite=TRUE)

#72 - 160m WD - 8m XY
filter_raster_72_160_mask <- imported_raster <= -72.00000 & imported_raster >= -160.00000 
filter_raster_72_160_data <- mask(imported_raster, filter_raster_72_160_mask, maskvalue = 0)

#Create Raster Filename
Res8m_filename <- paste(getwd(), "/", rast_name, "_72_160mWD.tif", sep="")
writeRaster(filter_raster_72_160_data, filename=Res8m_filename, options="INTERLEAVE=BAND", overwrite=TRUE)

#144 - 320m WD - 16m XY
filter_raster_144_320_mask <- imported_raster <= -144.00000 & imported_raster >= -320.00000 
filter_raster_144_320_data <- mask(imported_raster, filter_raster_144_320_mask, maskvalue = 0)

#Create Raster Filename
Res16m_filename <- paste(getwd(), "/", rast_name, "_144_320mWD.tif", sep="")
writeRaster(filter_raster_144_320_data, filename=Res16m_filename, options="INTERLEAVE=BAND", overwrite=TRUE)
#writeRaster(filter_raster_144_320_data, filename=file.choose(), options="INTERLEAVE=BAND", overwrite=TRUE)


#Greater than 300m - 24m XY
filter_raster_300_deeper_mask <- imported_raster <= -300.00000 #& imported_raster >= -600.00000 
filter_raster_300_deeper_data <- mask(imported_raster, filter_raster_300_deeper_mask, maskvalue = 0)

#Create Raster Filename
Res24m_filename <- paste(getwd(), "/", rast_name, "_300mWD_deeper.tif", sep="")
writeRaster(filter_raster_300_deeper_data, filename=Res24m_filename, options="INTERLEAVE=BAND", overwrite=TRUE)
#writeRaster(filter_raster_300_deeper_data, filename=file.choose(), options="INTERLEAVE=BAND", overwrite=TRUE)

######################
