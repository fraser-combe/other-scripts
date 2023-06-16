zip<-read.csv(file.choose(), header=TRUE) 
ZC = data.frame(zip)

## Download source file, unzip and extract into table
ZipCodeSourceFile = "http://download.geonames.org/export/zip/US.zip"
temp <- tempfile()
download.file(ZipCodeSourceFile , temp)
ZipCodes <- read.table(unz(temp, "US.txt"), sep="\t")
unlink(temp)
names(ZipCodes) = c("CountryCode", "zip", "PlaceName", 
                    "AdminName1", "AdminCode1", "AdminName2", "AdminCode2", 
                    "AdminName3", "AdminCode3", "latitude", "longitude", "accuracy")

## merge extra info onto original data
ZC_Info = merge(ZC, ZipCodes[,c(2:6,10:11)])
head(ZC_Info)



write.csv(ZC_Info, "zips.csv", row.names=FALSE)
getwd()
