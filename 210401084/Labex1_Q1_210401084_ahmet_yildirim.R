url <- "https://raw.githubusercontent.com/scizmeli/Red/master/MapsThatChangedOurWorld_StoryMap_Data.csv"
file_name <- "MapsThatChangedOurWorld_StoryMap_Data.csv"
download.file(url, destfile = file_name, mode = "wb")

maps <- read.csv(file_name, header = TRUE,sep = ";")

# Data Frame Boyutunu ve Sütun İsimlerini Kontrol Etme 1.2
if (dim(maps)[1] == 10 && dim(maps)[2] == 9) {
  cat("Dosya başarıyla yüklendi ve data.frame boyutları doğru.\n")
} else {
  cat("Hata: Data frame boyutları beklenen değerlere uymuyor.\n")
}

# Latitude sütunundaki "N" harflerini silme  1.3
maps$Latitude <- gsub("N", "", maps$Latitude)

# Longitude sütunundaki "W" harfi içeren satırların indekslerini bulma 1.4
idx <- grep("W", maps$Longitude)

# Longitude sütunundaki "E" ve "W" harflerini silme
maps$Longitude <- gsub("[EW]", "", maps$Longitude)

# Year sütunundaki "AD" harflerini silme
maps$Year <- gsub("AD", "", maps$Year)

#1.7
maps$Latitude <- as.numeric(gsub("[NW]", "", maps$Latitude))
maps$Longitude <- as.numeric(gsub("[EW]", "", maps$Longitude))

# idx değişkeninde adı geçen satırların değerlerini -1 ile çarpma 1.9
maps$Longitude[idx] <- maps$Longitude[idx] * -1

#1.10
finalResult <- data.frame(Longitude = maps$Longitude, Latitude = maps$Latitude, Year = maps$Year)

maps$Year <- as.numeric(as.character(maps$Year))
