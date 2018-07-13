# 00_Folder structure
# Create directories within repository folder

library(here)
library(magrittr)
library(tidyverse)



# create folder structure ----

folder_directories <- list("data", c("data", "from_ESS"), 
                           "interim_outputs",
                           "r_markdown"
)

folder_directories %>%
  map(function(.x){
    
    if(length(.x) > 1){
      
      temp_dir  <- str_c(.x, collapse = "/")
    }else{
      temp_dir <- .x
    }
    
    if(!dir.exists(here(temp_dir))){
      
      dir.create(temp_dir)
      
    } 
  })

rm(folder_directories)