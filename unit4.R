
R version 4.4.2 (2024-10-31 ucrt) -- "Pile of Leaves"
Copyright (C) 2024 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> mylist<-list(name="Tanishq",age=20,salary=3000000)
> mylist<-list(name="Tanishq",age=20,salary=3000000,Issalary_is_good=T)
> mylist
$name
[1] "Tanishq"

$age
[1] 20

$salary
[1] 3e+06

$Issalary_is_good
[1] TRUE

> #2 finding length of Mylist
  > length(mylist)
[1] 4
> 
  > #3 Extract element
  > mylist[1]
$name
[1] "Tanishq"

> #4 Extract element using Double Bracket
  > mylist[[1]]
[1] "Tanishq"
> #its give direct element rather then giving sublist
  > 
  > #5
  > names(my_list)=c("first_name","Biological_age","current_salary","sufficent")
Error: object 'my_list' not found
> names(mylist)=c("first_name","Biological_age","current_salary","sufficent")
> mylist
$first_name
[1] "Tanishq"

$Biological_age
[1] 20

$current_salary
[1] 3e+06

$sufficent
[1] TRUE

> #6
  > mylist$first_name
[1] "Tanishq"
> 
  > 
  > #7
  > mydata<-data.frame(name=c("Tanishq","Arun","Naresh","Peehu"),Age=c(20,20,20,20))
> mydata
name Age
1 Tanishq  20
2    Arun  20
3  Naresh  20
4   Peehu  20
> mydata[2,2]
[1] 20
> mydata<-data.frame(name=c("Tanishq","Arun","Naresh","Peehu"),Age=c(20,21,22,23))
> mydata[2,2]
[1] 21
> mydata
name Age
1 Tanishq  20
2    Arun  21
3  Naresh  22
4   Peehu  23
> mydata[2,2]
[1] 21
> #8
  > #9
  > nrow(mydata)
[1] 4
> 
  > 
  > #10
  > New_people<-data.frame(name="Kuldeep",Age="24")
> mydata<-rbind(mydata,new_people)
Error: object 'new_people' not found
> mydata<-rbind(mydata,New_people)
> 
  > mydata
name Age
1 Tanishq  20
2    Arun  21
3  Naresh  22
4   Peehu  23
5 Kuldeep  24
> 
  > 
  > #11
  > mylist
$first_name
[1] "Tanishq"

$Biological_age
[1] 20

$current_salary
[1] 3e+06

$sufficent
[1] TRUE

> mylist$personal_life<-list(fimaly_member=c("maa","dadi"),DOB=c(1974,1944))
> mylist
$first_name
[1] "Tanishq"

$Biological_age
[1] 20

$current_salary
[1] 3e+06

$sufficent
[1] TRUE

$personal_life
$personal_life$fimaly_member
[1] "maa"  "dadi"

$personal_life$DOB
[1] 1974 1944


> #12
  > mylist$personal_life
$fimaly_member
[1] "maa"  "dadi"

$DOB
[1] 1974 1944

> 
  > #13
  > myda
Error: object 'myda' not found
> mydata
name Age
1 Tanishq  20
2    Arun  21
3  Naresh  22
4   Peehu  23
5 Kuldeep  24
> mydata$R<-c('N','N','N','Y','N')
> mydata
name Age R
1 Tanishq  20 N
2    Arun  21 N
3  Naresh  22 N
4   Peehu  23 Y
5 Kuldeep  24 N
> mydata$R<-factor(x=mydata$R,levels=c('Y','N'))
> mydata
name Age R
1 Tanishq  20 N
2    Arun  21 N
3  Naresh  22 N
4   Peehu  23 Y
5 Kuldeep  24 N
> mydata$R
[1] N N N Y N
Levels: Y N
> #14
  > mydata$age[age>20]
Error: object 'age' not found
> mydata$Age[Age>20]
Error: object 'Age' not found
> mydata$Age[mydata$Age>20]
[1] "21" "22" "23" "24"
> mydata[mydata$Age>20]
Error in `[.data.frame`(mydata, mydata$Age > 20) : 
  undefined columns selected
> mydata[mydata$Age>20,]
name Age R
2    Arun  21 N
3  Naresh  22 N
4   Peehu  23 Y
5 Kuldeep  24 N
> mydata$AageOnMonth<-mydata$age*12
Error in `$<-.data.frame`(`*tmp*`, AageOnMonth, value = numeric(0)) : 
  replacement has 0 rows, data has 5
> mydata$AageOnMonth<-c(mydata$age*12)
Error in `$<-.data.frame`(`*tmp*`, AageOnMonth, value = numeric(0)) : 
  replacement has 0 rows, data has 5
> mydata$Age*12
Error in mydata$Age * 12 : non-numeric argument to binary operator
> mydata$Age*(12)
Error in mydata$Age * (12) : non-numeric argument to binary operator
> (mydata$Age)*(12)
Error in (mydata$Age) * (12) : non-numeric argument to binary operator
> mydata$Age<-as.numeric(mydata$Age)
> mydata$AageOnMonth<-mydata$age*12
Error in `$<-.data.frame`(`*tmp*`, AageOnMonth, value = numeric(0)) : 
  replacement has 0 rows, data has 5
> mydata$AageOnMonth<-mydata$Age*12
> mydata
name Age R AageOnMonth
1 Tanishq  20 N         240
2    Arun  21 N         252
3  Naresh  22 N         264
4   Peehu  23 Y         276
5 Kuldeep  24 N         288
> #15adove solved
  > #16
  > # In singel braket slicing 
  > #   used to extract element from a vector ,list,or data frame
  > #   Return a list or data frame when used with a list or data frame        resprctiely
  > #    kepps the structure of the data If we extract a subset from a list unsing single brackest you get sublist
  > #   can we used to extract multiple element at a time
  > #
  > #
  > #
  > #Double bracket
  > #
  > 
  > #   used to extract elemebnt from a list
  > #   Return the element itself(not a list) when used list
  > #
  > #    Used to access individual components of o List direct;y
  > #e.g.
  > mylist[1]
$first_name
[1] "Tanishq"

> View(mylist)
> mylist[5]
$personal_life
$personal_life$fimaly_member
[1] "maa"  "dadi"

$personal_life$DOB
[1] 1974 1944


> mylist[[5]]
$fimaly_member
[1] "maa"  "dadi"

$DOB
[1] 1974 1944

> # we can see in sigle braket [] its return sub list personal life
  > #But in double bracket[[]] return only element of the sub list personal life 
  > #17
  > 
  > mydata[2:3,2:3]
Age R
2  21 N
3  22 N
> #18
  > DOY<c(2004,2003,2002,2001,2000)
Error: object 'DOY' not found
> DOY<-c(2004,2003,2002,2001,2000)
> mydata<-cbind(mydata,DOY)
> mydata
name Age R AageOnMonth  DOY
1 Tanishq  20 N         240 2004
2    Arun  21 N         252 2003
3  Naresh  22 N         264 2002
4   Peehu  23 Y         276 2001
5 Kuldeep  24 N         288 2000
> #19
  > mydata2<-mydata[,-2#colom no which we want to exculed#]
                    + mydata2<-mydata[,-2]
                    Error: unexpected symbol in:
                      "mydata2<-mydata[,-2#colom no which we want to exculed#]
mydata2"
                    > mydata2<-mydata[,-2]
                    > mydata2
                    name R AageOnMonth  DOY
                    1 Tanishq N         240 2004
                    2    Arun N         252 2003
                    3  Naresh N         264 2002
                    4   Peehu Y         276 2001
                    5 Kuldeep N         288 2000
                    > # Remove 2ND COLOUM AGE
                      > #20
                      > mydata[,-mydata==240]
                    Error in FUN(left) : invalid argument to unary operator
                    > mydata[,-c(mydata==240)]
                    Age R AageOnMonth  DOY
                    1  20 N         240 2004
                    2  21 N         252 2003
                    3  22 N         264 2002
                    4  23 Y         276 2001
                    5  24 N         288 2000
                    > mydata[,mydata==240]
                    Error in `[.data.frame`(mydata, , mydata == 240) : 
                      undefined columns selected
                    > mydata[,-mydata&AgeOnMonth==240]
                    Error in FUN(left) : invalid argument to unary operator
                    > mydata[,mydata&AgeOnMonth==240]
                    Error: object 'AgeOnMonth' not found
                    > mydata[,"Age"]
                    [1] 20 21 22 23 24
                    > mydata[,"Age"]==20
                    [1]  TRUE FALSE FALSE FALSE FALSE
                    > mydata[mydata[,"Age"]==20]
                    name
                    1 Tanishq
                    2    Arun
                    3  Naresh
                    4   Peehu
                    5 Kuldeep
                    > mydata[,mydata[,"Age"]==20]
                    [1] "Tanishq" "Arun"    "Naresh"  "Peehu"   "Kuldeep"
                    > mydata[mydata[,"Age"]==20]
                    name
                    1 Tanishq
                    2    Arun
                    3  Naresh
                    4   Peehu
                    5 Kuldeep
                    > mydata[mydata[,"Age"]==20,]
                    name Age R AageOnMonth  DOY
                    1 Tanishq  20 N         240 2004
                    > mydata[,mydata[,"Age"]==20]
                    [1] "Tanishq" "Arun"    "Naresh"  "Peehu"   "Kuldeep"
                    > mydata[mydata[,"name"]=="tanishq",]
                    [1] name        Age         R           AageOnMonth DOY        
                    <0 rows> (or 0-length row.names)
                    > mydata[mydata[,"name"]=="Tanishq",]
                    name Age R AageOnMonth  DOY
                    1 Tanishq  20 N         240 2004
                    > #21
                      > 
                      > mylist<-fucation(list1,list2){}
                    Error: unexpected '{' in "mylist<-fucation(list1,list2){"
                    > mylist<-fucation(list1,list2){  mylist$list1<-list2}
                    Error: unexpected '{' in "mylist<-fucation(list1,list2){"
                    > mylist<-function(list1,list2){  mylist$list1<-list2}
                    > 
                      > 
                      > 
                      > list1<-mixed_list <- list(
                        +     name   = "Alice",
                        +     age    = 28,
                        +     scores = c(95, 88, 92),
                        +     passed = TRUE
                        + )
                    > 
                      > list2<-num_list <- list(10, 20, 30, 40)
                    > 
                      > mylist(list1,list2)
                    Error in mylist$list1 <- list2 : 
                      object of type 'closure' is not subsettable
                    > mylist<-function(list1,list2){  list1$list2<-list2}
                    > 
                      > mylist(list1,list2)
                    > list1
                    $name
                    [1] "Alice"
                    
                    $age
                    [1] 28
                    
                    $scores
                    [1] 95 88 92
                    
                    $passed
                    [1] TRUE
                    
                    > mylist
                    function(list1,list2){  list1$list2<-list2}
                    > double <- function(x) {
                      +     x * 2    # this is the last line, so its value is returned
                      + }
                    > 
                      > double(5)
                    [1] 10
                    > # [1] 10
                      > 
                      > mylist(list1,list2)
                    > 
                      > mylist(list1,list2)
                    > mylist
                    function(list1,list2){  list1$list2<-list2}
                    <bytecode: 0x0000011a685cc9f8>
                      > 
                      > 