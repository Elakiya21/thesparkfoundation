#                               THE SPARK FOUNDATION TASK: PREDICT USING SUPERVISED LEARNING

#NAME:  B ELAKIYA


#loading the give file
x<-read.csv(file = "sample.txt",sep = ",")

#storing the  columns separately
hr<-x$Hours
sc<-x$Scores

#create a regression model 
relation <- lm(sc~hr)

# Finding score for 9.25 hours
a <- data.frame(hr = 9.25 )
result <-  predict(relation,a)
result<-round(result)

#final result
print(paste("If the student studied 9.25 hours, The predicted score is:",result))
