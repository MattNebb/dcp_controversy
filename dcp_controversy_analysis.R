--------------------
#### Start ####
--------------------
library(bibliometrix)
library(ggplot2)
library(tm)
library(pdftools)
library(dplyr)

#set your working directory with .bib bibliometric sources here!
setwd("C:/yourfolder")

---------------------------------------------------------
#### Bibliometric analysis of ACADEMIC PUBLICATIONS ####
---------------------------------------------------------

###Datasets
#WoS1 (Law+Economics)
dfwos1 <- convert2df(file = "WOS1.bib", dbsource = "wos", format = "bibtex")
#WoS_L (Law)
dfwos1l <- convert2df(file = "WOS1L.bib", dbsource = "wos", format = "bibtex")
#WoS_E (Economics)
dfwos1e <- convert2df(file = "WOS1E.bib", dbsource = "wos", format = "bibtex")
#WoS2 (All fields)
dfwos2 <- convert2df(file = "WOS2.bib", dbsource = "wos", format = "bibtex")

###Country productivity and most-cited publications 
#[TABLE 4, TABLE 8]
r_wos1l <- biblioAnalysis(dfwos1l, sep = ";")
summary(r_wos1l)

#[TABLE 5, TABLE 9]
r_wos1e <- biblioAnalysis(dfwos1e, sep = ";")
summary(r_wos1e)

#[TABLE 6]
r_wos2 <- biblioAnalysis(dfwos2, sep = ";")
summary(r_wos2)
