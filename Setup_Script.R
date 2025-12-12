#set up

#install packages
# install.packages("palmerpenguins")
# install.packages("rmarkdown")
# install.packages("tidyverse")


#create package load function
packageLoad <-
  function(x) {
    for (i in 1:length(x)) {
      if (!x[i] %in% installed.packages()) {
        install.packages(x[i])
      }
      library(x[i], character.only = TRUE)
    }
  }

#load libraries

# library(tidyverse)
# library(palmerpenguins)
# library(rmarkdown)

packages <- c("tidyverse","rstatix","ggpubr", "lterdatasampler","palmerpenguins","dataRetrieval","rmarkdown","ggthemes","RColorBrewer","viridis","ggdark","plotly")
packageLoad(packages)


