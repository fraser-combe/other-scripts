
################
#This script allows us to obtain records for each species and plots using maptools package 

###############
#load packages
install.packages(c('dismo','maptools'))
library(dismo)
library(maptools)

#####

#bring in species records to a data frame may take time if a lot of recordss
Sotr<-gbif("Sorex", "trowbridgii", geo=T, removeZeros=T, args=c('originisocountrycode=US', 'originisocountrycode=CA')) #retrieve all occurrences of Sorex ugyunak from the U.S. and Canada
Soci<-gbif("Sorex", "cinereus", geo=T, removeZeros=T, args=c('originisocountrycode=US', 'originisocountrycode=CA')) #retrieve all occurrences of Sorex ugyunak from the U.S. and Canada
Soug<-gbif("Sorex", "ugyunak", geo=T, removeZeros=T, args=c('originisocountrycode=US', 'originisocountrycode=CA')) #retrieve all occurrences of Sorex ugyunak from the U.S. and Canada
Sopr<-gbif("Sorex", "pribilofensis", geo=T, removeZeros=T, args=c('originisocountrycode=US', 'originisocountrycode=CA')) #retrieve all occurrences of Sorex ugyunak from the U.S. and Canada

#created georeferenced samples

#trowbridgii
Sotr_xy<-subset(Sotr, lat !=0 & lon !=0) #retain only the georeferenced records. This can also be done by including geo=T in the previous command
coordinates(Sotr_xy) = c("lon", "lat") #Set coordinates to a Spatial data frame

#cinereus
Soci_xy<-subset(Soci, lat !=0 & lon !=0) #retain only the georeferenced records. This can also be done by including geo=T in the previous command
coordinates(Soci_xy) = c("lon", "lat") #Set coordinates to a Spatial data frame

#priblofensis
Sopr_xy<-subset(Sopr, lat !=0 & lon !=0) #retain only the georeferenced records. This can also be done by including geo=T in the previous command
coordinates(Sopr_xy) = c("lon", "lat") #Set coordinates to a Spatial data frame

#Soug
Soug_xy<-subset(Soug, lat !=0 & lon !=0) #retain only the georeferenced records. This can also be done by including geo=T in the previous command
coordinates(Soug_xy) = c("lon", "lat") #Set coordinates to a Spatial data frame

data(wrld_simpl)
plot(wrld_simpl, axes=TRUE, col='light green', las=1) #plot points on a world map
zoom(wrld_simpl, axes=TRUE, las=1, col='light green') #zoom to a specific region
points(Soci_xy, col='orange', pch=20, cex=0.75)
points(Sopr_xy, col='red', pch=20, cex=0.75)#
points(Sotr_xy, col='purple', pch=20, cex=0.75)
points(Soug_xy, col='blue', pch=20, cex=0.75)

##Another example in Hazel dormouse Europe
##Hazel dormouse

Sopr<-gbif("Muscardinus", "avellanarius", geo=T, removeZeros=T, args=c('originisocountrycode=US', 'originisocountrycode=CA')) #retrieve all occurrences of Sorex ugyunak from the U.S. and Canada

Sopr_xy<-subset(Sopr, lat !=0 & lon !=0) #retain only the georeferenced records. This can also be done by including geo=T in the previous command
coordinates(Sopr_xy) = c("lon", "lat") #Set coordinates to a Spatial data frame

data(wrld_simpl)
plot(wrld_simpl, axes=TRUE, col='light green', las=1) #plot points on a world map
zoom(wrld_simpl, axes=TRUE, las=1, col='light green') #zoom to a specific region
points(Sopr_xy, col='orange', pch=20, cex=0.75)#

#Another example for a Myomimus roachi found in Bulgaria and Turkey
##Bulgarian dormouse

Roach<-gbif("Myomimus", "roachi", geo=T, removeZeros=T, args=c('originisocountrycode=US', 'originisocountrycode=CA')) #retrieve all occurrences of Sorex ugyunak from the U.S. and Canada


Roach_xy<-subset(Roach, lat !=0 & lon !=0) #retain only the georeferenced records. This can also be done by including geo=T in the previous command
coordinates(Roach_xy) = c("lon", "lat") #Set coordinates to a Spatial data frame

data(wrld_simpl)
plot(wrld_simpl, axes=TRUE, col='light green', las=1) #plot points on a world map
zoom(wrld_simpl, axes=TRUE, las=1, col='light green') #zoom to a specific region
points(Roach_xy, col='orange', pch=20, cex=0.75)#
