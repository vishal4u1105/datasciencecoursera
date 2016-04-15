## Question 1
The American Community Survey distributes downloadable data about United States communities. Download the 2006 microdata survey about housing for the state of Idaho using download.file() from here:

https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv

and load the data into R. The code book, describing the variable names is here:

https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf

How many housing units in this survey were worth more than $1,000,000?

A. 47  
B. 53  
C. 164  
D. 31  

 Solution
```javascript

> url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
> download.file(url, destfile="./Que1.csv")
> Data <- read.table("./Que1.csv", sep=",", header=T)
> library(dplyr)
> count(filter(Data, VAL==24))
	Source: local data frame [1 x 1]

  	     n
 	    (int)
	1    53
```

## Question 3
Download the Excel spreadsheet on Natural Gas Aquisition Program here:

https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx

Read rows 18-23 and columns 7-15 into R and assign the result to a variable called: dat

What is the value of: `sum(dat$Zip*dat$Ext,na.rm=T)`

(original data source: http://catalog.data.gov/dataset/natural-gas-acquisition-program)
```
 A 154339
 B 0
 C NA
 D 36534720
```
```javascript
Solution
> url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
> download.file(url, destfile="./Que31.xlsx" , mode='wb')
> dat <- read.xlsx("./Que32.xlsx", sheetIndex=1, colIndex= c(7:15) , rowIndex=c(18:23))
> sum(dat$Zip*dat$Ext, na.rm=T)
  [1] 36534720
```
##Question 4
Read the XML data on Baltimore restaurants from here:

https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml

How many restaurants have zipcode 21231?
```
 A 127
 B 100
 C 17
 D 130
```
Solution
```javascript
> url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
> library(RCurl)
> Dat <- getURL(url)
> doc <- xmlParse(Dat)
> rootNode <- xmlRoot(doc)
> zipdata<-xpathSApply(rootNode,"//zipcode", xmlValue)
> length(zipdata[zipdata==21231])
   [1] 127
```
##Question 5
The American Community Survey distributes downloadable data about United States communities. Download the 2006 microdata survey about housing for the state of Idaho using download.file() from here:

https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv

using the fread() command load the data into an R object DT Which of the following is the fastest way to calculate the average value of the variable pwgtp15 broken down by sex using the data.table package?
```
 A mean(DT\(pwgtp15,by=DT\)SEX)
 B tapply(DT\(pwgtp15,DT\)SEX,mean)
 C mean(DT[DT$SEX==1,]\(pwgtp15); mean(DT[DT\)SEX==2,]$pwgtp15)
 D rowMeans(DT)[DT$SEX==1]; rowMeans(DT)[DT$SEX==2]
 E DT[,mean(pwgtp15),by=SEX]
 F sapply(split(DT\(pwgtp15,DT\)SEX),mean)
 ```
