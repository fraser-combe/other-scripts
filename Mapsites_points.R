#########
#Fraser Combe
##Making map in R with points

install.packages(c("cowplot", "googleway", "ggplot2", "ggrepel","ggspatial", "libwgeom", "sf", "rnaturalearth", "rnaturalearthdata","ggthemes"))

library("ggplot2")
theme_set(theme_bw())
library("sf")  

library("rnaturalearth")
library("rnaturalearthdata")
library("ggthemes")

world <- ne_countries(scale = "medium", returnclass = "sf")
class(world)

ggplot(data = world) +
  geom_sf()

library("ggspatial")

ggplot(data = world) +
  geom_sf() +
  annotation_scale(location = "bl", width_hint = 0.5) +
  annotation_north_arrow(location = "bl", which_north = "true", 
                         pad_x = unit(0.75, "in"), pad_y = unit(0.5, "in"),
                         style = north_arrow_fancy_orienteering) +
  ###This sets coords for boundaries of maps
  coord_sf(xlim = c(-172.15, -79.12), ylim = c(19.97, 71.2), expand = FALSE)


library("sf")
##read in sites data here example Sorex Cinereus
##Column 1 Population column 2 Latitude column 3 Longitude (columns names must match in the script below)
sites<-read.csv(paste("~/sites_Sorex_C.csv", sep="" ))
##or
sites<-read.table(file.choose(), sep=",", header=TRUE )
sites

P<-ggplot(data = world) +
  geom_sf(fill = "cornsilk") +
  geom_jitter(data = sites, aes(x = Long, y = Lat,color = Pop, size =1.0,),position = position_jitter(width = 0.2, height = 0.1)) +
  # shape = 23, fill = "darkred")
  annotate(geom = "text", x = -168, y = 58, label = "Bering Sea", 
           fontface = "italic", color = "grey22", size = 5) +
  annotate(geom = "text", x = -108, y = 60, label = "Canada", 
           fontface = "italic", color = "grey22", size = 5) +
  annotate(geom = "text", x = -157, y = 63, label = "Alaska", 
           fontface = "italic", color = "grey22", size = 5) +
  annotate(geom = "text", x = -130, y = 63, label = "Canada", 
           fontface = "italic", color = "grey22", size = 5) +
  coord_sf(xlim = c(-175.15, -120.01), ylim = c(50, 75.2), expand = FALSE)+
  xlab("Longitude") + 
  ylab("Latitude")+
  ggtitle("Map of Sorex Cinereus sites")

P + theme(panel.grid.major = element_line(colour = gray(0.5), linetype = "dashed", 
                                          size = 0.5), panel.background = element_rect(fill = "aliceblue"), 
          panel.border = element_rect(fill = NA)) 
          
         # If you want to color the labels manually use:
P + scale_color_manual(values=c("green", "red", "purple", "blue"))
