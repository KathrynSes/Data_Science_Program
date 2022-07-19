#### Load in csv file ####
library(ggplot2)
movies <- read.csv("data/IMDb_Data_final.csv")
head(movies)
View(movies)
# Save R object as a file
saveRDS(movies, "data/movies.RDS")

