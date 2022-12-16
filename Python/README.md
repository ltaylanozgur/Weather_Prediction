# Analysis and prediction of average temperature based on meteorological data

<img src="Images/r3.png"/>

L.T. Ozgur Yildirim

### Index:

* [Purpose of the study](#section1)
* [Materials and Methods](#section2)
* [Tableau](#section3)
* [SQL](#section4)
* [Linear Regression Model](#section5)
* [Logistic Regression Model](#section6)
* [Time Series Forecasting](#section7)
* [Conclusion](#section8)
* [Physical units of the variables in the dataset](#section9)
* [Files](#section10)
* [References](#section11)
* [License](#section12)


<a id='section1'></a>
### Purpose of the study

In this project, I am working as a data analyst for a meteorology company. My company created machine learning models to predict the average temperature and if the weather is suitable for outdoor activities based on meteorological data. 
The main objectives of this study include 1) analyzing relationships between meteorological parameters, 2) hypothesis testing to decide whether the data sufficiently support the hypothesis, and 3) building linear and logistic regression models and time series forecasting to predict the average temperature and classify the weather into suitable for outdoor activities or not.

<a id='section2'></a>
### Materials and Methods

Meteorological parameters in the dataset are average temperature, maximum temperature, minimum temperature, precipitation, humidity, cloud cover, wind speed, wind gust, pressure, sunshine, and barbeque weather. The dataset consists of meteorological parameters of 10 cities. The meteorological parameters of Dusseldorf ranging from 2000 to 2010 (i.e., avg. actual temperature and precipitaion in the plot below) are used to train the linear regression model, develop logistic regression model and for time series analysis. The meteorological parameters of Muenchen (2001) are used to test the linear regresion model. The studies are performed on .csv and excel files using Python, Mysql, and Tableau softwares.

<img src="Images/r4.png"/>

NaN values in the dataset are replaced by mean value of the columns. Then, outliers are removed. After that, the weather dataset is exported as csv and excel files. These files are then imported in to Tableau and Mysql.

The methods of this study include the followings:
* Get data
* Exploratory data analyses
* Data cleaning
* Data visualization
* Check for multicollinearity
* Hypothesis testing
* Data wrangling
* Build model

<a id='section3'></a>
### Tableau
[Link to Tableau](https://public.tableau.com/views/Mid_bootcamp_project_16647282235460/Muenchen_model?:language=enUS&publish=yes&:display_count=n&:origin=viz_share_link)

The csv and excel files are imported into Tableau. The meteorological parameters are plotted to visualize and observe their relations in Tableau.

<a id='section4'></a>
### SQL

The weather schema is created in SQL. Then, tables of ten cities are created in weather schema. The Dusseldorf (2000-2010) and Muenchen (2001) data is imported into Python via queries.

<a id='section5'></a>
### Linear Regression Model

The cleaned data is checked for multicollinearity before building linear regression model. The minimum and maximum temperatures are removed since they make high collinearity (> 0.90).
The linear regression model is built using Dusseldorf data between 2000-2010. The R2 score is 0.767. The predicted average temperaure in Dusseldorf between 2000-2010 is 11.10 °C. Then, the model is tested using Muenchen data for 2001. The predicted average temperaure in Muenchen in 2001 is 11.50 °C. The R2 score is 0.744. The comparison of actual temperature and predicted temperature in Muenchen in 2001 in the plot below represents the prediction accuracy of the linear regression model. Moreover, the predicted temperature fits well with sunshine in Muenchen in 2001 as seen in the plot below. 

Linear Regression Model Results_MUENCHEN

 R2 Score:  0.744
 
 MSE Score:  15.339
 
 RMSE Score:  3.916
 
 MAE Score:  3.133
 
 <img src="Images/r5.png"/>
 
 <img src="Images/r2.png"/>

 <a id='section6'></a>
### Logistic Regression Model

The logistic regression model is developed using Dusseldorf (2000-2010) data to classify the weather suitable for outdoor activities or not. The barbeque_weather data used in this purpose have True and False value for suitable weather and not suitbale weather, respectively. The logistic regression model give 0.932 score. The relative distribution of True and False values show that 80% of days in Dusseldorf between 2000-2010 are not suitable to make barbeque. Therefore, the data is imbalanced. The data is oversampled and then logistic regression model is reapplied. The precision, recall, and F1 scores before and after data is oversampled (> 0.80) indicate that the classification accuracy of the model is well.

<img src="Images/r1.png"/>

 <a id='section7'></a>
### Time Series Forecasting

In this project, we are trying to predict the future average temperature in Dusseldorf using time series analysis. We firstly implemented a baseline model with the assumption that the air temperature today depends on the air temperature yesterday, the air temperature yesterday depends on the day before yesterday, and so on. The RMSE of the model is 2.16 implying that the model predicts the average temperature well. The SARIMA model, Seasonal Autoregressive Integrated Moving Average, predicts the average temperature starting from 2005 to 2010. Static forecasting results in lower RMSE value (2.09) when compared to dynamic forecasting (RMSE=7.0). This is because dynamic forcasting uses the forecasted values of temperature data; however, static forecasting uses the actual temperature data. Based on RMSE values, static forecasting (RMSE=2.09) makes better prediction of the average temperature when compared to the linear regression model (RMSE=3.91).
 
<img src="Images/r6.png"/>
<img src="Images/r7.png"/>

<a id='section8'></a>
### Conclusion

This study investigates the average temperatures for Dusseldorf and Muenchen cities based on meteorological parameters using linear
and logistic regression models.
The linear regression model (0.75 r2 score) predicts that Muenchen has annual temperature of 11.50 °C in 2001.
Logistic regression model is useful before making plans outside as it classifies if the weather is suitable for outdoor activities or not.
Based on RMSE values, static forecasting of ARIMA model (RMSE=2.09) predicts better than the linear regression model (RMSE=3.20) in this project.

<a id='section9'></a>
### Physical units of the variables in the dataset

CC   : cloud cover in oktas

DD   : wind direction in degrees

FG   : wind speed in 1 m/s

FX   : wind gust in 1 m/s

HU   : humidity in fraction of 100 %

PP   : sea level pressure in 1000 hPa

QQ   : global radiation in 100 W/m2

RR   : precipitation amount in 10 mm

SS   : sunshine in 1 Hours

TG   : mean temperature in 1 &#176;C

TN   : minimum temperature in 1 &#176;C

TX   : maximum temperature in 1 &#176;C

<a id='section10'></a>
### Files
CSV_files: exported from Python and imported to Mysql and Tableau

Excel_files: exported from Python and imported to Tableau

Model_results: exported from Python and imported to Tableau

Presentation: pdf file of the presentation

Python: project dataset (.csv files) and Jupiter notebook files (1. Data preparation_EDA_cleaning, 2. Linear_logistic_regression_models, 3. Weather_prediction_time_series)

SQL: mysql files of the project. Dusseldorf and Muenchen data are in "Model" folder.

<a id='section11'></a>
### References
The dataset is taken from www.kaggle.com website. Source of the dataset includes 1) Klein Tank, A.M.G. and Coauthors, 2002. Daily dataset of 20th-century surface air temperature and precipitation series for the European Climate Assessment, 2) Int. J. of Climatol., 22, 1441-1453 and 3) Lai, 2020. Time Series Analysis and Weather Forecast in Python. Retrieved from: https://medium.com/@llmkhoa511/time-series-analysis-and-weather-forecast-in-python-e80b664c7f71.

<a id='section12'></a>
### License
This is an educational project; therefore, all materials can be used freelly.
