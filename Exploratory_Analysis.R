##Practice sub-setting data 
View(movies)
filter(movies)
library(ggplot2)
# Add data
movies <- read.csv("data/IMDb_Data_final.csv") 

# Graph of all duration to there IMDb.Rating
movies <- movies %>% 
  slice_max(order_by = IMDb.Rating, n = 10)
  ggplot(movies, aes(x= Duration)) + geom_bar()
  
# Christopher Nolan Movies Plots
chrisMovies <- filter(movies, "ChristopherNolan" == Director)
ggplot(chrisMovies, aes(x = ReleaseYear, y = IMDb.Rating)) + geom_point(color = "red")
ggplot(chrisMovies, aes(x = ReleaseYear, y = IMDb.Rating)) + geom_bar(stat = "summary", fun = mean, color = aes(Duration))



# Smaller Data Set and graphs
smallerMovies <- slice_head(movies, n = 10)
ggplot(smallerMovies, aes(x = Duration, y = IMDb.Rating)) + geom_point(color = "blue")
ggplot(smallerMovies, aes(x = Duration, y = ReleaseYear)) + geom_bar(stat = "summary", fun = mean)
select(smallerMovies, Duration, ReleaseYear, Title)


# Adding new rows 
head(movies)
oldness <- movies %>% 
  select(Title, ReleaseYear, Director, Duration) %>%
  mutate(old = ReleaseYear < 2000, new = ReleaseYear >= 2000)
oldness

#Renaming Columns
rename(movies, IMDb.Rating = newRating)
