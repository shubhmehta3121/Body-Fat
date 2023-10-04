mydata = read.csv('Bodyfat.csv',header = T,sep = ",")
install.packages('caTools')
library(caTools)
set.seed(123)
split=sample.split(mydata,SplitRatio=0.70)
train_data<-subset(mydata,split==T) #Created Training Data for Analysis
test_data<-subset(mydata,split==F) #Created Testing Data for Final Verification
train_data
attach(mydata)
model=lm(Fat~Age+Height+Weight+BMI+Neck+Chest+Abdomen+Hip+Thigh+Knee+Ankle+Biceps+Forearm+Wrist)
summary(model)
anova(model)
model2 = lm(Fat~ Age+Weight+BMI+Neck+Chest+Abdomen+Thigh+Wrist)
summary(model2)
anova(model2)
predictions=predict(model2,test_data)
actuals_preds <- data.frame(cbind(actuals=test_data$Fat, predicteds=predictions))
head(actuals_preds)
correlation_accuracy <- cor(actuals_preds) 
head(correlation_accuracy)
# Residual Analysis
pred = fitted(model2) 
Res = residuals(model2) 
plot(Res,main="Residual vs Fitted",xlab="Fitted Values",ylab="Residuals",sub="lm(Fat~ Age+Weight+BMI+Neck+Chest+Abdomen+Thigh+Wrist)")
abline(0,0)
qqnorm(Res,main="Normal Q-Q",ylab="Standardized Residuals",sub="lm(Fat~ Age+Weight+BMI+Neck+Chest+Abdomen+Thigh+Wrist)")
# error assumption was that it follows normal distribution
# qqline indicates that residuals follow normal distribution 
#  as the points lie near the line
qqline(Res)


##########################################################################
# not saving to my pwd

write.csv(pred,"C:/Users/SHUBH MEHTA/Documents/BDS SEM 2 COURSES/Statistical Data Analysis/Individual Project/Regression Analysis Code/pred_m.csv") 
write.csv(Res,"C:/Users/SHUBH MEHTA/Documents/BDS SEM 2 COURSES/Statistical Data Analysis/Individual Project/Regression Analysis Code/res_m.csv")

##########################################################################

mse = mean(Res^2)
rmse = sqrt(mse)







plot(actuals_preds,col=c("blue","red","black"))
abline(0,1)








