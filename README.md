## About the App

This app is designed to see the performance of different cars in Miles per Gallon vs Horse Power using the specifications input by the user.
By changing specs like number of cylinders, displacement and transmission type, the performance of the cars in terms of miles per gallon and horse power can be compared.

## Data

The app uses the data from the 1974 Motor Trend car Road Tests and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles.

### Format

A data frame with 32 observations on 11 (numeric) variables.

[, 1]	mpg	Miles/(US) gallon
[, 2]	cyl	Number of cylinders
[, 3]	disp	Displacement (cu.in.)
[, 4]	hp	Gross horsepower
[, 5]	drat	Rear axle ratio
[, 6]	wt	Weight (1000 lbs)
[, 7]	qsec	1/4 mile time
[, 8]	vs	Engine (0 = V-shaped, 1 = straight)
[, 9]	am	Transmission (0 = automatic, 1 = manual)
[,10]	gear	Number of forward gears
[,11]	carb	Number of carburetors

## UI Manual

The user can select one of three types of engines(4 cylinder/ 6 cylinder/ 8 cylinder). The displacement range can be selected between 70 - 500 cu. in.
Furthermore, the transmission mechanism (automatic vs manual) can also be selected.

Given the input, the user will be able to see a real-time scatter plot of different models of cars plotted for their respective miles per gallon and horse power. The cars will be shown differentiated according their number of forward gears.

## Server Calculations

1. Loading relevant libraries and data.
2. Filter data according to input selections made by user.
3. Draw the scatter plot according to the selected data