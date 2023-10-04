# Statistical Analysis on Body Fat in Relation to Persons' Body Measurements

## Introduction

This detailed project report presents a comprehensive statistical analysis on body fat percentage (BFP) in relation to various body measurements and age. The objective of this analysis is to predict body fat percentage based on age, weight, height, BMI, and several other body measurements. Understanding body fat percentage is essential for assessing health and identifying potential health issues related to excessive stored fat.

## Data Understanding

### Sample Data:
- The dataset includes 252 observations with various body measurements.
- Data encompasses individuals from diverse age groups (22 to 81 years).
- All body measurements are standardized (e.g., weight in pounds).

### Key Statistics:
- Mean of Fat (19.15) is slightly less than the median (19.20), indicating a negative skewness.
- Data is fairly symmetrical, but some variables exhibit higher kurtosis.

### Histograms and Boxplots:
- Fat shows a normal distribution with mild negative skewness.
- Few outliers are observed but not removed due to their correlation with the output variable.

## Regression Analysis

### Model Building:
- Multiple linear regression models are constructed using age, weight, height, BMI, and other body measurements.
- Model 1 includes all variables; Model 2 is refined after removing insignificant attributes.

### Residual Analysis:
- Residual plots and normal Q-Q plots confirm the linearity assumption.
- The final model (Model 2) is validated for its accuracy and predictive power.

## Hypothesis Testing and Prediction

- Null hypothesis is rejected, indicating the model's suitability for prediction.
- Test data is used to validate predictions, achieving an accuracy of 86.255%.

## Conclusion

This analysis provides valuable insights into predicting body fat percentage based on various body measurements. The models developed demonstrate significant predictive capabilities, enabling better understanding of individuals' health status. The findings contribute to informed decision-making in health assessments.

**Tools Used:** R, SAS JMP, Excel
