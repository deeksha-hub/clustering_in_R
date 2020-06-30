iris <- read.csv("~/Downloads/iris.data", header=FALSE) #importing dataset
View(iris)
# Renaming columns 
names(iris) <- c("sepal.length","sepal.width","petal.length","petal.width","class")
View(iris)
iris.features=iris
#Removing the last column(class):
iris.features$class <-NULL
View(iris.features)
# Applying k means algorithm:
results <- kmeans(iris.features,3)
results$size
results$cluster
table(iris$class,results$cluster)
# Ploting the result clusters obtained :
plot(iris[c("petal.length","petal.width")],col=iris$class)
plot(iris[c("petal.length","petal.width")],col=results$cluster)
plot(iris[c("sepal.length","sepal.width")],col=results$cluster)
#Adding centers to the cluster
points(results$centers,pch=2,col="blue")