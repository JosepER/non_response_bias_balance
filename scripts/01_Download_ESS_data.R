# 01_Download_ESS_data

library(here)

if(!file.exists(here("data", "from_ESS", "ESS8e02.spss.zip"))){

download.file(url = "http://www.europeansocialsurvey.org/file/download?f=ESS8e02.spss.zip&c=&y=2016",
              destfile = here("data", "from_ESS", "ESS8e02.spss.zip"))

}


zip.file.extract(file = "ESS8e02.sav", 
                 zipname = here("data", "from_ESS", "ESS8e02.spss.zip"))

unzip(zipfile = here("data", "from_ESS", "ESS8e02.spss.zip"),
                     exdir= here("data", "from_ESS", "ESS8e02.sav"))