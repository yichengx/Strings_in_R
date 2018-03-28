library(stringr)

#1

print("\"")
cat("\"")

cat("DSO\n545")
# \n = newline

cat("DSO\t545")
# \t = Tab

#2

cat(":-\\")
cat("(^_^\")")
cat("@_'-'")
cat("\\m/")

#3

?str_locate
?str_sub

#4

str_locate(string = "great", pattern = "a")
str_locate("fantastic","a") 
str_locate_all("fantastic","a")
str_locate("super","a")

str_locate(c("fantastic","great","super"),"a")

#5

str_sub(string = "testing",start = 1, end = 3)
str_sub("testing", start = 4)
str_sub("testing", end = 4)

#6

input <- c("abc","defg")
str_sub(input,c(2,3))

#7

emails <- readRDS("email.rds")

cat(emails[1])

str_locate(emails[1],"\n\n")

#8

email1 = str_locate(emails[1],"\n\n")
hearder = str_sub(emails[1], end = email1[1])
body = str_sub(emails[1], start = email1[2])

#10

breaks = str_locate(emails,"\n\n")

headers = str_sub(emails, end = breaks[,1])
bodies = str_sub(emails, start = breaks[,2])

### Second Lab

#1

fruit = c("apple","banana","pear","pinapple")

#2

# detect if the pattern a is found
str_detect(fruit,"a")

# detect if it starts with a
str_detect(fruit,"^a")

# detect if it ends with a
str_detect(fruit,"a$")

# check if it has a or e or i or o or u
str_detect(fruit,"[aeiou]")

# check if it has a or b or c or d
str_detect(fruit,"[a-d]")

str_detect(fruit,"[0-9]")

#3

str_detect(fruit, "^a[a-z]*e$")

# . could be any character or number
str_detect(fruit, "^a.*e$")

#4

phone = c("213 748 4826","213-748-4826","(213) 748 4826")

str_detect(phone, "[(]?[0-9]{3}[)]?[ -]?[0-9]{3}[ -]?[0-9]{4}")

#5

str_extract_all(bodies,"[(]?[0-9]{3}[)]?[ -]?[0-9]{3}[ -]?[0-9]{4}")
