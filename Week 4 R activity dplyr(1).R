#Week 4: dplyr package

#Task: Write the code to get a dataset from Base R: ChickWeight
#and save it as a dataframe with a new name that includes your first name
data("ChickWeight")
JunlingChickWeight <- ChickWeight

#See the top rows of the data
#TASK: Write the code to see the top rows of the data
head(JunlingChickWeight)

#Install and call the package dplyr
#TASK: Write the code to install and call dplyr
install.packages("dplyr")
library(dplyr)


#Let's just see the weight and Time columns
#Task: Write the code to 'select' just the weight and Time columns 
#(hint: use the 'select' function)
selected_data <- select(JunlingChickWeight, weight, Time)
head(selected_data)

#Let's name the dataset with just the two columns, weight and Time
#TASK: Write the code to save the two columns as a new dataframe
#and give it a new name
JunlingChickWeight_weight_Time_data <- selected_data

#Let's get rid of the Time column in the new dataframe created above
#TASK: Write the code that deselects the Time column
#(hint: use the 'select' function to not select a -column)
JunlingChickWeight_Weight_Data <- select(JunlingChickWeight_weight_Time_data, -Time)


#Let's rename a column name
#TASK: Write the code that renames 'weight' to 'ounces'
JunlingChickWeight_Weight_Data<- rename(JunlingChickWeight_Weight_Data, ounces = weight)


#Let's make a new dataframe with the new column name
#TASK: Write the code that names a new dataframe that includes the 'ounces' column
new_data_frame <- JunlingChickWeight_Weight_Data


#Let's 'filter' our dataframe to only those with a 1 in the Chick column
#TASK: Write the code that includes only rows where Chick = 1
filter(JunlingChickWeight, Chick == 1)


#Let's 'group' our data by Diet
#TASK: Write the code to group the data by Diet (hint: group_by)
grouped_data <- group_by(JunlingChickWeight, Diet)

#Task: add one of the other codes (not in the tasks above) 
#you learned about from the dplyr package
summarise(JunlingChickWeight, max_weight = max(weight))
