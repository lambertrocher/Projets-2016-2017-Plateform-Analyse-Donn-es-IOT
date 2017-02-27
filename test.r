#!/usr/bin/Rscript

install.packages("httr", repos="http://mirror.ibcp.fr/pub/CRAN/");
library(httr);
r <- GET("http://httpbin.org/get");
print(r);

GET("http://localhost:8086/query", 
  query = list(key1 = "CREATE DATABASE mydb")
)

POST("http://localhost:8086/write?db=mydb", body = list("cpu_load_short","host=server01","region=us-west"))
