## Створити змінні базових (atomic) типів
 
int <- 1L<br/>
double <- 2.5<br/>
bool <- TRUE<br/>
char <- "a"<br/>
compl <- 1+1i<br/>

int<br/>
[1] 1<br/>
class(int)<br/>
[1] "integer"<br/>

double<br/>
[1] 2.5<br/>
class(double)<br/>
[1] "numeric"<br/>

bool<br/>
[1] TRUE<br/>
class(bool)<br/>
[1] "logical"<br/>

char<br/>
[1] "a"<br/>
class(char)<br/>
[1] "character"<br/>
 
compl<br/>
[1] 1+1i<br/>
class(compl)<br/>
[1] "complex"<br/>

## Створити вектори, які: містить послідовність з 5 до 75; містить числа 3.14, 2.71, 0, 13; 100 значень TRUE.
 
first <- c(5:75)<br/>
second <- c(3.14, 2.71, 0, 13)<br/>
third <- as.logical(c(1:100))<br/>

first<br/>
 [1]  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43<br/>
[40] 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75<br/>
second<br/>
[1]  3.14  2.71  0.00 13.00<br/>
third<br/>
  [1] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE<br/>
 [24] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE<br/>
 [47] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE<br/>
 [70] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE<br/>
 [93] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE<br/>

## Створити наступну матрицю за допомогою matrix, та за допомогою cbind або rbind
 
matrix_vector <- c(0.5, 3.9,0,2,1.3,131,2.2, 7,3.5,2.8,4.6,5.1)<br/>
first_matrix <- matrix(matrix_vector, ncol=3)<br/>

first_matrix<br/>
     [,1]  [,2] [,3]<br/>
[1,]  0.5   1.3  3.5<br/>
[2,]  3.9 131.0  2.8<br/>
[3,]  0.0   2.2  4.6<br/>
[4,]  2.0   7.0  5.1<br/>
## method 2
first_row <- c(0.5, 1.3, 3.5)<br/>
second_row <- c(3.9,131,2.8)<br/>
third_row <- c(0,2.2,4.6)<br/>
fourth_row <- c(2,7,5.1)<br/>
second_matrix <- rbind(first_row,second_row,third_row,fourth_row)<br/>

second_matrix<br/>
           [,1]  [,2] [,3]<br/>
first_row   0.5   1.3  3.5<br/>
second_row  3.9 131.0  2.8<br/>
third_row   0.0   2.2  4.6<br/>
fourth_row  2.0   7.0  5.1<br/>
## 4. Створити довільний список (list), в який включити всі базові типи.

lst <- list("a", TRUE, 5L, 1.3, 1i)<br/>

lst<br/>
[[1]]<br/>
[1] "a"<br/>

[[2]]<br/>
[1] TRUE<br/>

[[3]]<br/>
[1] 5<br/>

[[4]]<br/>
[1] 1.3<br/>

[[5]]<br/>
[1] 0+1i<br/>

## 5. Створити фактор з трьома рівнями «baby», «child», «adult».

fctr <- factor(levels = c("baby", "child", "adult"))<br/>

fctr<br/>
factor(0)<br/>
Levels: baby child adult<br/>
 ## 6. Знайти індекс першого значення NA в векторі 1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11. Знайти кількість значень NA.
 
 vctr <- c(1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11)<br/>
 na_first_position <- min(which(is.na(vctr)))<br/>
 na_count <- sum(is.na(vctr))<br/>
 
 na_first_position<br/>
[1] 5<br/>
 na_count<br/>
[1] 3<br/>
 
 ## 7. Створити довільний data frame та вивести в консоль.
 
 data_frame <- data.frame(first =(1:3), second=c(1i,2i,3i))<br/>
 data_frame<br/>
  first second<br/>
1     1   0+1i<br/>
2     2   0+2i<br/>
3     3   0+3i<br/>
 
 ## 8. Змінити імена стовпців цього data frame.
 
 colnames(data_frame) <- c("numeric", "complex")<br/>
 
 data_frame<br/>
  numeric complex<br/>
1       1    0+1i<br/>
2       2    0+2i<br/>
3       3    0+3i<br/>