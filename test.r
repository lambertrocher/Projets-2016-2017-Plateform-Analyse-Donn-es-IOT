#!/usr/bin/Rscript

install.packages("httr", repos="http://mirror.ibcp.fr/pub/CRAN/");
library(httr);
r <- GET("http://httpbin.org/get");
print(r);

