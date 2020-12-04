# -----------------------------------------------Class1:Basic Concepts of R---------------------------
# ctrl+Enter---To submit the code
# Ctrl+SHIFT+N---To create new R script
# Ctrl+SHIFT+c----Comment the code
# <- is same as = in r
# 
# assinging a value
a <-2
a
a = 4

# # working directory details
getwd()

#creating my own directory
setwd("C:\\Users\\sk\\Desktop\\Others\\R_training\\Sample")

getwd()

getwd()

#The c function is widely used to combine values to form a vector
x=c(1,2,3,NA)
x

y=c('a','b','c','a')
y

sum(x)
sum(x,na.rm=TRUE)

table(y)



# Handling missing values
x=c(1,2,3)
sum(x)
x=c(1,2,NA,3)
sum(x)

# To calculate sum excluding NA, use na.rm =  TRUE (By default, it is FALSE)
sum(x,na.rm=TRUE)

#Create 1 to 10 numbers
x=c(1:10)
x
sd(x)
mean(x)
Region = c('India','UK')
Region
help(sum)
?cor

install.packages("openxlsx")

library("openxlsx")
getwd()

data = read.xlsx("Descriptive Stat.xlsx")
View(data)

table(data$REGION)

names(data)
summary(data$June_Revenue)

Bstat=summary(data)
write.csv(Bstat,"Basic_statistics.csv")

str(data)

cor(data$May_Revenue,data$June_Revenue,use = "pairwise.complete.obs")
x <- c(1,2,3,4)
y <- c(3,3,4,NA)
cor(x,y, use = "pairwise.complete.obs")


names(data)




# Basic properties of R
# R is case-sensitive, so you have to use the exact case that the program requires.
# To get help for a certain function such as sum, use the form:  help (sum)
# Object names in R can be any length consisting of letters, numbers, underscores ‘‘_’’ or the period ‘‘.’’
# bject names in R should begin with a letter.
# Unlike SAS and SPSS, R has several different data structures including vectors, factors, data frames, matrices, arrays, and lists. The data frame is most like a dataset in SAS.

# -----------------------------------Class2:Types of Variables_____________________________________________________________

# Types of variables Vectors(Numeric or Character), Factor,Matrices,Array & Dataframes
# ---------Vector------------
# A vector is an object that contains a set of values called its elements.
# Numeric and Character vector creation
age <- c(23,44)
mean(age)
sd(age)
# Average of the numeric vector when data is missing
age <- c(23,44,NA,34,56,76,89)
sum(age,na.rm=TRUE)
mean(age,na.rm=TRUE)
Gender <- c("Male","Female","Male","Female","Male","Female","Male")
table(Gender)
# Frequency of the Character vector
table(Gender)
class(Gender)
class(age)
# # ---------Factor------------
# #Factor: R has a special data structure to store categorical variables. It tells R that a variable is nominal or ordinal by making it a factor
Type <- c(1,1,2,1,2,1)
mean(Type)

Type=factor(Type)
class(Type)

sum(Type)
Type

mode(Type)


mode(Type)
Type

Type <- c(1,1,2,1,2,1)
class(Type)
Type <- as.character(Type)
sum(Type)
class(Type)
mode(Type)
# ---------Matrix------------
#Matrix: All values in columns in a matrix must have the same mode (numeric, character, etc.) and the same length.
# The cbind function joins columns together into a matrix. See the usage below

a <- c(1,2,3,4,5)
b <- c(2,3,4,5,6)
c <- c(3,4,5,5,5)
new <- cbind(a,b,c)
new
dim(new)
class(new)
mode(new)

new[1,2:3]

#Row Dimension
new[3,]
#Column Dimension
new[,2:3]

new[,2]
#second row of third column

new[2,3]

# First and second rows and second and third columns
new[1:2,2:3]

# ---------Dataframe------------
# Dataframes:1.It contains variables and records.It is more general than a matrix, in that different columns can have different modes (numeric, character, factor, etc.,  
# 2.The data.frame function is used to combine variables (vectors and factors) into a data frame.

a <- c(1,2,3,4,5)
b <- c(2,3,4,5,6)
c <- c(4,5,6,7,2)
region <- c("US","UK","INDIA","US",NA)
sample =data.frame(a,b,c,region)
View(sample)
class(sample)
str(sample)


sample$region=as.character(sample$region)

class(sample)
mode(sample$a)
str(sample)

data=sample[,3:4]
data=sample[,c(1,4)]
data=sample[3:4]


# -------------Lists-------------
# A list allows you to store a variety of  objects.

old <- list(a,b,c,region,new,sample)
old

data <- old[[1]]
data

summary(sample)
summary(sample$b)
sample



# Install and Load Packages
install.packages("openxlsx")

# To use the installed package, add the following line of code 
library(openxlsx)
getwd()

new = read.xlsx("Descriptive Stat.xlsx")
class(new)
View(new)
str(new)
names(new)

head(new,10)
tail(new,10)


details= new[1:1000,c(1,4:5)]

new1=new[,1:3]
details= tail(new[,1:3],1000)

report=summary(new)

str(new)
new$ID=as.character(new$ID)

# You can also read & write existing data frame in CSV format by using write.csv() function.
write.csv(report, "Descriptive_stat.csv")
read.csv("new.csv")


# Assigning data to the data frame
mydata = read.xlsx("Descriptive Stat.xlsx")


# Save data in R
save(new,file="new.R")
load("new.R")
new1=new
new2=new
rm(new1,new2)
names(new)
str(new)
sum(new$May_Revenue)

mydata=new
names(mydata)

# To tell R which data set to use
sum(mydata$June_Revenue,na.rm=TRUE)
new$May_Revenue
attach(new)
May_Revenue
detach(new)

head(new)
tail(new)

nrow(new)
ncol(new)

class(new)
str(new)
mode(new$May_Revenue)

names(new)
summary(new)

# ------------------------------------------------------Class3:Dataset options----------------------------------

# Importing data
install.packages("openxlsx")
library("openxlsx")
SampleData = read.xlsx("Descriptive Stat.xlsx")
summary(SampleData,na.rm=TRUE)
str(SampleData)

SampleData$ID = as.character(SampleData$ID)
str(SampleData)

# Summary
summary(SampleData)
# Summary only for one variable
summary(SampleData$May_Revenue)
summary(SampleData[4])

testing1 = SampleData
test2= SampleData
rm(testing1,test2)
sample=SampleData
# Lists name of variables in a dataset 
names(sample)

# Number of rows in dataset
nrow(sample)

# Number of columns in dataset
ncol(sample)

# Structure of your data
str(sample)
View(SampleData)


# First 6 rows of the data
head(sample)
# First n rows of dataset
head(sample,n=10)

sample1= head(sample,n=100)
View(sample1)

# Last 6 rows of your data
tail(sample)
tail(sample,n=5)

# The function below returns number of missing values in each variable of a dataset. 
sample=SampleData

colSums(is.na(sample))

names(sample)
# Number of missing values in a single variable 
sum(is.na(sample[2]))

# The dplyr is a powerful R-package to manipulate, clean and summarize unstructured data. 
# In short, it makes data exploration and data manipulation easy and fast in R.
install.packages("dplyr")
library("dplyr")
SampleData=sample

# Selecting Random N Rows
new = sample_n(SampleData,3)

new2= sample_n(SampleData,nrow(SampleData)*0.8)
nrow(SampleData)*0.8

#  Selecting Random Fraction of Rows

new1= sample_frac(SampleData,0.8)
View(new1)





library("openxlsx")
SampleData=read.xlsx("Descriptive Stat.xlsx")


getwd()
library("openxlsx")
SampleData= read.xlsx("2 Descriptive Stat.xlsx")
SampleData=SampleData[,1:6]

library("dplyr")

# Remove Duplicate Rows based on all the variables (Complete Row)
nrow(SampleData)
x1 = distinct(SampleData)

write.csv(x1,"x1.csv")
# Remove Duplicate Rows based on a variable
names(SampleData)
table(SampleData$Region)

x2 = distinct(SampleData, ID, .keep_all= TRUE)
write.csv(x2,"x2.csv")

# Remove Duplicates Rows based on multiple variables

x2 = distinct(SampleData, ID,REGION, .keep_all= TRUE)

library("dplyr")
#-----------------------Arrange Function-----------------------------#
names(SampleData)
new=arrange(SampleData, Gender,desc(May_Revenue))
names(new)

new1=arrange(SampleData, REGION,desc(June_Revenue))
x2 = distinct(new1,REGION, .keep_all= TRUE)

table(SampleData$REGION)


names(SampleData)
nrow(SampleData)
library(dplyr)

# Selecting Variables (or Columns)
mydata2 = select(SampleData, ID,June_Revenue, REGION)
names(mydata2)
nrow(mydata2)
str(mydata2)
head(mydata2)

# Dropping Variables
mydata = select(SampleData, -REGION, -Gender)
names(mydata)

# Selecting or Dropping Variables starts with 'Y'
names(SampleData)
mydata3 = select(SampleData, starts_with("R"))
names(mydata3)

mydata3 = select(SampleData, -starts_with("R"))

# Selecting Variables contain 'I' in their names
mydata4 = select(SampleData, contains("I"))
names(mydata4)

names(SampleData)

summary(SampleData[c(3,6:8)])

# Reorder Variables
library("dplyr")
SampleData = select(SampleData, Gender, everything())
names(SampleData)


library(dplyr)
# Rename Variables (newname=oldname)
SampleData = rename(SampleData, Revenue=June_Revenue)
names(SampleData)

library("openxlsx")
SampleData=read.xlsx("Descriptive Stat.xlsx")
names(SampleData)
head(SampleData)
table(SampleData$REGION)
summary(SampleData$May_Revenue)

# Filter Rows
library("dplyr")
mydata7 = filter(SampleData, May_Revenue>100 & May_Revenue<170)

nrow(SampleData)
nrow(mydata7)
summary(mydata7$May_Revenue)


mydata7 = filter(SampleData, REGION =="East")


table(mydata7$REGION)

# Multiple conditions   Check this condition
# mydata7 = filter(SampleData, REGION == c("East","North"))

table(SampleData$REGION)

# NOT Condition
mydata7 = filter(SampleData, !REGION %in% c("East","North"))
table(mydata7$REGION)

names(SampleData)

mydata7 = filter(SampleData, June_Revenue>500 & Gender=="M")

mydata7 = filter(SampleData, June_Revenue>500 | Gender=="M")


table(mydata7$Gender)
SampleData1=mydata

#------------------------Summarize the data---------------------------#
library(openxlsx)
library(dplyr)
SampleData1=read.xlsx("Descriptive Stat.xlsx")
names(SampleData1)
SampleData=SampleData1

colSums(is.na(SampleData1))
sum(is.na(SampleData1$REGION))

table(SampleData1$REGION)

SampleData$REGION[is.na(SampleData$REGION)]="Other"
colSums(is.na(SampleData))

sum(SampleData1$June_Revenue)
table(SampleData$REGION)

library(dplyr)
new=filter(SampleData1, REGION=='East')
names(new)
sum(new$June_Revenue)


summarise(SampleData1, mean_May_Revenue = mean(May_Revenue,na.rm=TRUE), med=median(May_Revenue,na.rm=TRUE))

summarise_at(SampleData, vars(May_Revenue, June_Revenue), funs(mean, median),na.rm=TRUE)

SampleData1$ID = as.character(SampleData1$ID)
str(SampleData1)

summarise_if(SampleData1, is.numeric, funs(sum,mean,sd),na.rm=TRUE)

str(SampleData1)

class(SampleData1)
mode(SampleData1)
mode(SampleData1$ID)
str(SampleData1)

SampleData1$ID= as.character(SampleData1$ID)
summary(SampleData1)
#----------------------Group by function-----------------------------#
library("openxlsx")
SampleData1=read.xlsx("Descriptive Stat.xlsx")
names(SampleData1)
SampleData=SampleData1

library("dplyr")
# Summarise Data by Categorical Variable

library("dplyr")
# Check the count function
t = summarise_at(group_by(SampleData, REGION), vars(May_Revenue, June_Revenue), funs(mean,median,sum), na.rm = TRUE)

# ---------------------Mutate--------------------------------------------
# Create a new variable
SampleData = mutate(SampleData, discount=May_Revenue*0.10)
names(SampleData)

SampleData$new2 = SampleData$May_Revenue+2000
head(SampleData1)

SampleData1=SampleData
rm(SampleData1,t)
# -------------------------------Alternate Dataset options----------------------------------------------------

# Replacing a value with other value
table(SampleData$REGION)
SampleData$REGION[SampleData$REGION=="East"] <- "India"

table(SampleData$REGION)

SampleData$REGION[SampleData$REGION=="Suprik"] <- NA

SampleData[is.na(SampleData)] <- 0

colSums(is.na(SampleData))

# Keeping and Dropping Variables
names(SampleData)


new =SampleData[1:3]
names(new)

# Selecting first three columns
new = SampleData[1:3]
names(new)
SampleData <- SampleData[c(1,5:6)] 
names(SampleData)
SampleData <- SampleData[c("ID","Gender")] 

# Deleting a particular column
names(SampleData)
new1 = SampleData[-1]
new2 = SampleData[c(-1,-4:-5)]
names(new2)
# Selecting first 10 observations

new3 = SampleData[1:10,]

new3 = SampleData[1:10,c(1,2)]
names(new3)

SampleData=read.xlsx("Descriptive Stat.xlsx")
# Subsetof the data
new4 <-subset(SampleData, June_Revenue>=150)

SampleData$Gender[SampleData$Gender=="M"] <- NA

new5 <-subset(SampleData, is.na(SampleData$May_Revenue))

SampleData2 <- na.omit(SampleData)


# ----------------------Join--------------------------------------------
# Importing the sample data
library("openxlsx")
library("dplyr")
getwd
setwd("C:\\Users\\sk\\Desktop\\Others\\R_training\\Sample")
Sample1 = read.xlsx("Sample1.xlsx")
Sample2 = read.xlsx("Sample2.xlsx")

names(Sample1)
names(Sample2)
# It returns all rows from the left table, even if there are no matches in the right table.
new = left_join(Sample1,Sample2,"ID")
names(new)

new = right_join(Sample1,Sample2,"ID")


# Common rows in both the tables,returns rows when there is a match in both tables

new1= inner_join(Sample1,Sample2,"ID")

new1= inner_join(Sample1,Sample2,by=c("Unique ID"="ID","Region"="Region"))

ID = c(1,1,2)
Trans=c(20,21,30)

transaction=data.frame(ID,Trans)

demo=data.frame(ID=c(1,2),Address=c("a","b"))

new = left_join(demo,transaction,"ID")

# All the values
new3=full_join(Sample1,Sample2,"ID")


# #Alternate Options
# Outer join or full join: merge(x = sample1, y = sample2, by = "ID", all = TRUE)
# 
# Left outer: merge(x = sample1, y = sample2, by = "ID", all.x = TRUE)
# merge(x = df1, y = df2, by = c("CustomerId","name"), all.x = TRUE)
# merge(x = df1, y = df2, by.x = ("CustomerId",name),by.y=("Id","name), all.x = TRUE))
# 
# merge(x = df1, y = df2, by = "CustomerId", all.y = TRUE)

# Cross join: merge(x = df1, y = df2, by = NULL)


names(new3)

# Combine Data Vertically

# intersect(x, y) Rows that appear in both x and y.

# union(x, y) Rows that appear in either or both x an

library("openxlsx")
# Importing the sample data
Sample3 = read.xlsx("4_8 Sample3.xlsx")
Sample4 = read.xlsx("4_8 Sample4.xlsx")

str(Sample4)
str(Sample3)

new4=intersect(Sample3,Sample4)
new5=union(Sample3,Sample4)
new6=union_all(Sample3,Sample4)

new7=rbind(Sample3,Sample4)
names(Sample3)

# If condidtion:if_else(condition, true, false, missing = NULL)
# true  : Value if condition meets
# false : Value if condition does not meet
# missing : Value if missing cases.It will be used to replace missing values (Default : NULL)
names(SampleData)
table(SampleData$Gender)

SampleData=read.xlsx("2 Descriptive Stat.xlsx")
names(SampleData)
table(SampleData$Gender)
library("dplyr")
SampleData$Gender_Group=if_else(SampleData$Gender=="M","Male","Female","Missing")
names(SampleData)
table(SampleData$Gender_Group)

SampleData$Income_Group=if_else(SampleData$June_Revenue >= 150,"High","Low","Missing")
head(SampleData)


# Multiple Conditions with the nestedif condition

SampleData$Income_Group=if_else(SampleData$June_Revenue >= 150 ,"High",if_else(SampleData$June_Revenue >= 100,"Medium","Low","Missing"))

head(SampleData)
table(SampleData$Income_Group)

library("openxlsx")
SampleData=read.xlsx("Descriptive Stat.xlsx")
# ------------sQLDF-------------------------------------------
install.packages("sqldf")

library(sqldf)

new= SampleData


# Creating a dataset

new1=sqldf("select * from SampleData")

names(SampleData)
new1=SampleData[c("ID","Gender")]


#subset of the data based on variables

new2= sqldf("select id,Gender,June_Revenue from SampleData")
names(new2)


# Subset of the data using observation filter

new3 =sqldf("select id,gender,june_Revenue,May_Revenue from SampleData 
            where June_Revenue >= 200 and May_Revenue >100 and gender='M'")

new4=sqldf("select * from SampleData
           where Gender='M'")
names(new3)
names(SampleData)

# summarize the data

new4= sqldf("select Region,gender,sum(June_Revenue) as sum_June_Revenue,
min(June_Revenue) as min_Revenue,max(June_Revenue),avg(June_Revenue) from SampleData
where Model_Type='High'
            group by Region,gender
having sum_June_Revenue > 20000
")

# order by
names(SampleData)


new4= sqldf("select Region,Gender,sum(June_Revenue) as sum_June_Revenue,
min(June_Revenue) as min_Revenue,max(June_Revenue),avg(June_Revenue) from SampleData
            group by Region,Gender
")

new4= sqldf("select Region,sum(June_Revenue) as sum_June_Revenue,
min(June_Revenue) as min_Revenue,max(June_Revenue),avg(June_Revenue) from SampleData
            group by Region
having sum_June_Revenue> 70000
")

library(sqldf)

new5= sqldf("select a.*
            ,case when May_Revenue <100 then 'Low'
                  when May_Revenue >100 and May_Revenue< 200 then 'Moderate'
                  else 'High' end as Revenue_Segment
            , case when Region in ('India','North') then 'Asia'
                   else 'Other' end as Region_Type
            from SampleData as a
            ")
table(SampleData$REGION)

names(SampleData)

# Joins
library("openxlsx")
Sample1 = read.xlsx("Sample1.xlsx")
Sample2= read.xlsx("Sample2.xlsx")
head(Sample1)
head(Sample2)

new5 = sqldf("select * from Sample1 as a
             left join Sample2 as b
             on a.ID=b.ID")
new6 = sqldf("select a.ID,a.May_revenue,b.region from Sample1 as a
             left join Sample2 as b
             on a.ID=b.ID")

# Try inner join and outer join

