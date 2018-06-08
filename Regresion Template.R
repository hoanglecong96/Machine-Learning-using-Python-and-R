#Regression Template for R
# Importing the dataset
dataset = read.csv('Position_Salaries.csv')
dataset = dataset[2:3]

#Splitting the dataset into training set and test set
# install.packages('caTools')
# library(caTools)
# set.seed(123)
# split=sample.split(dataset$Purchased,SplitRatio=0.8)
# training_set=subset(dataset, split==TRUE)
# test_set=subset(dataset, split==FALSE)

#Feature Scaling
# training_set[,2:3]=scale(training_set[,2:3])
# test_set[,2:3]=scale(test_set[,2:3])


#Fitting the Regression model to the dataset
#Create Regressor

#Predicting a new result with the regression model
y_pred=predict(regressor,data.frame(Level=6.5))


#Visualising the Regression model Result
#install.packages('ggplot2')
library(ggplot2)
ggplot()+
  geom_point(aes(x=dataset$Level, y=dataset$Salary),
             colour='red')+
  geom_line(aes(x=dataset$Level, y=predict(regressor, newdata=dataset)),
            colour='blue')+
  ggtitle('Truth or Bluff (Regression)')+
  xlab('Level')+
  ylab('Salary')

#Visualising the Regression model Result (for high resolution and smoother curve)
x_grid=seq(min(dataset$Level),max(dataset$Level),0.1)
ggplot()+
  geom_point(aes(x=dataset$Level, y=dataset$Salary),
             colour='red')+
  geom_line(aes(x=x_grid, y=predict(regressor, newdata=data.frame(Level=x_grid))),
            colour='blue')+
  ggtitle('Truth or Bluff (Regression)')+
  xlab('Level')+
  ylab('Salary')
