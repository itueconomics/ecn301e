---
layout: page
title: R Exercises
permalink: /quiz4.html
---

You have to upload your work to Ninova as `.R` file/script. 

You need to answer the research questions below using `MASS` package:

```R
library(MASS)
```

You need to make comments using `#` in the R Script. An example template:

```R
library(MASS)
#### Question 1 ####
data(Traffic)
#Code
#Comment

#### Question 2 ####
data(UScrime)
#Code
#Comment

#### Question 3 ####
data(UScereal)
#Code
#Comment
```

## 1. Effect of Speed Limits on Accidents

Data: Traffic

> An experiment was performed in Sweden in 1961–2 to assess the effect of a speed limit on the motorway accident rate. The experiment was conducted on 92 days in each year, matched so that day j in 1962 was comparable to day j in 1961. On some days the speed limit was in effect and enforced, while on other days there was no speed limit and cars tended to be driven faster. The speed limit days tended to be in contiguous blocks.

Open the package and the library. Try to find out whether speed limits have impact on number of accidents.

Also make data visualization. 

## 2. Determinants of Crime in US

Data: UScrime

> Criminologists are interested in the effect of punishment regimes on crime rates. This has been studied using aggregate data on 47 states of the USA for 1960 given in this data frame. The variables seem to have been re-scaled to convenient numbers.

Find out the determinants of rate of crimes in a particular category per head of population (represented as `y` in the dataset.)

## 3. Descriptive Statistics

Data: UScereal

> The UScereal data frame has 65 rows and 11 columns. The data come from the 1993 ASA Statistical Graphics Exposition, and are taken from the mandatory F&DA food label. The data have been normalized here to a portion of one American cup.

1. Find the averages of the shelves and make comment. 
2. Find the averages of the manufacturers which is labeled as `mfr` in the dataset.
3. Some of the products have vitamins and some `none`. Create an econometric model that predicts if product contains `enriched` vitamin or others. Use only columns: `calories + protein + fat + sodium + fibre + carbo + sugars + shelf + potassium`
4. Score your model in the previous question. 