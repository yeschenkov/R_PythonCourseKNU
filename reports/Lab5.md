 ## Написати функцію pmean, яка обчислює середнє значення (mean) забруднення сульфатами або нітратами серед заданого переліка моніторів. Ця функція приймає три аргументи: «directory», «pollutant», «id». Directory – папка, в якій розміщені дані, pollutant – вид забруднення, id – перелік моніторів. Аргумент id має значення за замовчуванням 1:332. Функція повинна ігнорувати NA значення.
 
 pmean <- function(directory, pollutant, id = 1:332) {<br />
 
   v <- vector(mode="numeric", length=0)<br />
   
   for(i in id){<br />
     fileStr <- paste("C:/Users/v.yeshchenkov/Documents/RLabs/",directory, "/",sprintf("%03d", as.numeric(i)), ".csv", sep = "")<br />
     myData <- read.csv(fileStr)<br />
     
     num <- myData[[pollutant]] <br />
     
     v <- append(v, num) <br />
   } <br />
   mean(v, na.rm = T)<br />
 }<br />
 
 pmean("specdata", "sulfate", 1:10)<br />
[1] 4.064128<br />
 pmean("specdata", "nitrate")<br />
[1] 1.702932<br />
 
 ## 2. Написати функцію complete, яка виводить кількість повних спостережень (the number of completely observed cases) для кожного файлу. Функція приймає два аргументи: «Directory» та «id» та повертає data frame, в якому перший стовпчик – ім’я файлу, а другий – кількість повних спостережень.
 
 complete <- function(directory, id = 1:332) {<br />
   
   result_dataframe <- data.frame(id=numeric(),<br />
                    nobs=numeric(),<br />
                    stringsAsFactors=FALSE) <br />
   for(i in id){<br />
     fileStr <- paste("C:/Users/v.yeshchenkov/Documents/RLabs/",directory, "/",sprintf("%03d", as.numeric(i)), ".csv", sep = "")<br />
     myData <- read.csv(fileStr)<br />
     completed_cases <- complete.cases(myData)<br />
     cases_count <- length(completed_cases[completed_cases == TRUE])<br />
     
     newRow <- data.frame(name=i, cases_count=cases_count)<br />
     result_dataframe <- rbind(result_dataframe, newRow)<br />
   }<br />
   return(result_dataframe)<br />
 }<br />
 
 complete("specdata", 1)<br />
  name cases_count<br />
1    1         117<br />
 complete("specdata", c(2, 4, 8, 10, 12))<br />
 name cases_count<br />
1    2        1041<br />
2    4         474<br />
3    8         192<br />
4   10         148<br />
5   12          96<br />
 complete("specdata", 50:60)<br />
   name cases_count<br />
1    50         459<br />
2    51         193<br />
3    52         812<br />
4    53         342<br />
5    54         219<br />
6    55         372<br />
7    56         642<br />
8    57         452<br />
9    58         391<br />
10   59         445<br />
11   60         448<br />
 
 ## 3. Написати функцію corr, яка приймає два аргументи: directory (папка, де знаходяться файли спостережень) та threshold (порогове значення, за замовчуванням дорівнює 0) та обчислює кореляцію між сульфатами та нітратами для моніторів, кількість повних спостережень для яких більше порогового значення. Функція повинна повернути вектор значень кореляцій. Якщо ні один монітор не перевищує порогового значення, функція повинна повернути numeric вектор довжиною 0. Для обчислення кореляції між сульфатами та нітратами використовуйте вбудовану функцію  «cor» з параметрами за замовчуванням.
 
 corr <- function(directory, threshold = 0) {<br />
   completed_cases <- complete(directory)<br />
   r <- completed_cases[completed_cases$cases_count > threshold,]<br />
   correlation <- numeric()<br />
   
   for(i in r$name){<br />
     fileStr <- paste("C:/Users/v.yeshchenkov/Documents/RLabs/",directory, "/",sprintf("%03d", as.numeric(i)), ".csv", sep = "")<br />
     myData <- read.csv(fileStr)<br />
     correlation <- append(correlation, cor(myData$sulfate, myData$nitrate, use="na.or.complete"))<br />
   }<br />
   return(correlation)<br />
 }<br />
 
 cr <- corr("specdata", 150)<br />
 head(cr); summary(cr)<br />
[1] -0.01895754 -0.14051254 -0.04389737 -0.06815956 -0.12350667 -0.07588814<br />
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. <br />
-0.21057 -0.04999  0.09463  0.12525  0.26844  0.76313 <br />
 
 cr <- corr("specdata", 400)<br />
 head(cr); summary(cr)<br />
[1] -0.01895754 -0.04389737 -0.06815956 -0.07588814  0.76312884 -0.15782860<br />
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. <br />
-0.17623 -0.03109  0.10021  0.13969  0.26849  0.76313 <br />
 
 cr <- corr("specdata", 5000)<br />
 head(cr); summary(cr) ; length(cr)<br />
numeric(0)<br />
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. <br />
                                                
[1] 0<br />