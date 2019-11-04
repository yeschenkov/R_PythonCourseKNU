 ## 1. Функція add2(x, y), яка повертає суму двох чисел.
 
 add2 <- function(x,y) {<br />
   return(x+y)<br />
 }<br />

 add2(1,2)<br />
[1] 3<br />
 
 ## 2. Функція above(x, n), яка приймає вектор та число n, та повертає всі елементі вектору, які більше n. По замовчуванню n = 10.
 
 above <- function(vector, n = 10) {<br />
   return(vector[vector > n])<br />
 }<br />
 <br />
 above(c(1,6,15,7,2,12))<br />
[1] 15 12<br />
 
 ## 3. Функція my_ifelse(x, exp, n), яка приймає вектор x, порівнює всі його елементи за допомогою exp з n, та повертає елементи вектору, які відповідають умові expression. Наприклад, my_ifelse(x, “>”, 0) повертає всі елементи x, які більші 0. Exp може дорівнювати “<”, “>”, “<=”, “>=”, “==”. Якщо exp не співпадає ні з одним з цих виразів, повертається вектор x.
 
 my_ifelse <- function(x,exp,n) {<br />
   allowed_expressions <- c('<', '>', '<=', '>=', '==')<br />
   if (exp %in% allowed_expressions) {<br />
     expression = paste('x',exp ,'n')<br />
     return(x[eval(parse(text = expression))])<br />
   } else {<br />
     return(x)<br />
   }<br />
   
}<br />
my_ifelse(c(1,5,8,2,9,10),">",5)<br />
[1]  8  9 10<br />

## . Функція columnmean(x, removeNA), яка розраховує середнє значення(mean) по кожному стовпцю матриці, або data frame. Логічний параметр removeNA вказує, чи видаляти NA значення. По замовчуванню віндорівнює TRUE.
 
 columnmean <- function(x, removeNA = TRUE) {<br />
   for(i in seq_len(ncol(x))) {<br />
     print(mean(x[,i], na.rm = removeNA))<br />
   }<br />
}<br />

columnmean(matrix(c(1,2,3,4,5,6), ncol = 3))<br />
[1] 1.5<br />
[1] 3.5<br />
[1] 5.5<br />