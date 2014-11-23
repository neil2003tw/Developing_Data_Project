---
title       : Working Attitude Tests
subtitle    : developing data product - course project
author      : 
job         : 
logo        : blue-250.png
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Introduction

<br></br>
1. Basic exploratory data analysis study done by ```shiny```.  

2. Use ```attitude``` data from package ```datasets```.  

3. Find relationship by linear regression.

--- .class #id 

## Data briefing  


```r
library(datasets)
str(attitude)
```

```
## 'data.frame':	30 obs. of  7 variables:
##  $ rating    : num  43 63 71 61 81 43 58 71 72 67 ...
##  $ complaints: num  51 64 70 63 78 55 67 75 82 61 ...
##  $ privileges: num  30 51 68 45 56 49 42 50 72 45 ...
##  $ learning  : num  39 54 69 47 66 44 56 55 67 47 ...
##  $ raises    : num  61 63 76 54 71 54 66 70 71 62 ...
##  $ critical  : num  92 73 86 84 83 49 68 66 83 80 ...
##  $ advance   : num  45 47 48 35 47 34 35 41 31 41 ...
```

--- 
  
## Shinyapps.io

<iframe src='assets/img/shinyapps.png' width=600px height=250px>
</iframe>  

---
  
## Further information  

  
<br></br>  
> Due to length limitation of slidify product, please check more detail on **Shinyapps.io** of this project.  
<br></br>  

<a href='https://neil2003tw.shinyapps.io/Working_Attitude_test/'>Shinyapps-Working Attitude test</a>



