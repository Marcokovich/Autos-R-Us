# Autos-R-Us
## Linear Regression to Predict MPG
Below is the summary of the linear regression:

![image](https://user-images.githubusercontent.com/71575748/162592732-fa18284a-47f5-45c8-822d-2d3f523ef1b1.png)

The following observations can be made for the model.
- The intercept is -104, meaning the baseline value (all variables are 0) is a mpg of -104
- vehicle length has an estimator of 6.267, meaning for every unit of length added the model would predict a 6.267 increase in mpg. This is quite odd since this would increase the weight as a result and that would decrease the mpg.
- vehicle weight has an estimator of .001245 meaning for every unit of weight added, the model would predict a .001245 increase to mpg. This is also odd as increasing the mass would be expected to cause a decrease in mpg not an increase. However, due to the correlation to length and weight of a vehicle I believe the model is dealing with multicolinearity between these two variables that likely share a strong correlation.
- Spoiler Angle has a value of .06877, meaning for every degree increased the model would predict a .06877 increase in mpg
- Gound Clearance has an estimator value of 3.546, meaning for each increase of 1 to the unit used for ground clearance, the model would predict a 3.546 increase to mpg.
- AWD has is a categorical estimator of -3.411, meaning if the car is AWD, then the model would predict a 3.411 decrease in MPG.

- It would appear that the variables for vehicle length, ground clearance, and to a lesser extent vehicle weight. This is due to the lower p-value meaning the probability of it being random is very low.
- The slope is not zero as each variable had a positive estimator with the exception of AWD. Although it's a categorical variable with a range of 1.
- With an adjusted R-squared of .6825, 68.25% of the variance is explained by the model. Its aslo weighed to address the number of variables used in the model. Within the specifics of the model, I would say the model isn't particularly good, rather it is adequately predictive.

## Summary Statistics on Suspension Coils
Below is the summary of the suspension coil dataframe.

![image](https://user-images.githubusercontent.com/71575748/162595210-ac39e1ac-ed93-4247-b513-11981013d5ff.png)

- A mean of 1498.78 is observed with a median of 1500, implying a slight left skew.
- Standard Deviation is 7.89 so the average deviation from the mean is about 7.89.

Below is the summary of the suspension coil dataframe, broken down by the different lots.

![image](https://user-images.githubusercontent.com/71575748/162595352-b5d6ddb9-a4ac-4998-9a95-093e158a44f0.png)

- We see that the 1st and 2nd lot are much different thatn lot 3, the mean of lot 1 is 1500 with the median of 1500 implying there is no skew.
- The 2nd lot has a mean of 1500.2 and a median of 1500 implying a very slight positive skew. The variance and SD of the 2nd lot is slightly higher than the 1st.
- The 3rd lot is the most different. Its mean is 1496.14 and a median of 1498.5, the only median that isn't 1500. The variance is 170.29 and an SD of 13.05 which is magnitudes higher than the 1st 2 lots.

- With a design specification dictating the variance not exceding 100, lots 1 and 2 are able to meet these specs as the variance is .979 and 7.47 repsectively, well below the variance max of 100.
- Lot 3, however, has a variance of 170.29 well above the maximum variance alloted to follow the specs.

## T-Tests on Suspension Coils

A t-test performed on the full sample.
The null hypothesis: The true mean is equal to 1500
The alternative hypothesis: The true mean is not equal to 1500
Results of the t-test below:

![image](https://user-images.githubusercontent.com/71575748/162596909-7447d914-d88f-4ae1-8413-7070d7f92360.png)

We observe a p-value of 0.06028 meaning at an alpha of .05 we fail to reject the null hypothesis. At an alpha of .15 we can reject the null hypothesis since this is a two-tailed test.

A second t-test was perofmred on a subset of the sample from lot 1. The null and alternative hypothesis is the same as the previous t-test.
Null: True mean is 1500
Alternative: True mean is not 1500
Results of this t-test below:

![image](https://user-images.githubusercontent.com/71575748/162597143-ed7574bf-9ec1-4b3a-bbc9-fa69c6715ac0.png)

We observe a p-value of 1.0, meaning there is no alpha value where we can reject the null hypothesis. We fail to reject the null hypothesis.

A third t-test is performed on a subset from the sample from lot 2. The Null and Alternative are the same as above.
Null: True mean is 1500
Alternative: True Mean is not 1500
Result of this t-test below:

![image](https://user-images.githubusercontent.com/71575748/162597434-c4faecc1-afbb-4d38-9a0c-89429b1514eb.png)

We observe a p-value of 0.6072, meaning there is no alpha below .6072 were we fail to reject the null hypothesis.

A final t-test is performed on the subset from the sample from lot 3. The Null and Alternative are the same as above.
Null: The true mean is 1500
Alternative: The true mean is not 1500
Results of this t-test below:

![image](https://user-images.githubusercontent.com/71575748/162598200-2e8f35b6-72de-4c79-8315-c3e87a2b828c.png)

We observe a p-value of 0.04168 so we are able to reject the null hypothesis at the fabled .05 alpha level. HOWEVER, that would be the case if this was a one-tailed test. It is a two tailed test so we would have to double the p-value, thus failing to reject the null. In conclusion we would fail to reject the null hypothesis at the .05 alpha level, but not at a .10 alpha level

## Study Design: MechaCar vs Competition:

