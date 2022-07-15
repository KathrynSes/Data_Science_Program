# Z scores and confidence intervals 

sample_mean = 38.2 
pop_mean = 40 # what our null hypothesis is testing against
sd = 10 # standard deviation 
n = 100 # total sample size 

z = (sample_mean - pop_mean)/ (sd/sqrt(n))
z

View(iris)
# One sample t-test 
mean_sepal <- mean(iris$Sepal.Length)
mean_sepal

randomSample <- sample_n(iris, 30)
randomSample 

#Null hypothesis, random sample mean is equal to population mean (5.8433)

#Alternate hypothesis random sample mean is not equal to population mean (5.8433)

pop_sepal_length <- iris$Sepal.Length
randomSampleSepalLength <- randomSample$Sepal.Length
t.test(mu = mean_sepal, x = randomSampleSepalLength)

setosa <- filter(iris, Species == "setosa")
setosaSepLen <- setosa$Sepal.Length
t.test(mu = mean_sepal, x = setosaSepLen)

# is the p-value less and 0.05 