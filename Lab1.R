## Створити змінні базових (atomic) типів

int <- 1L
double <- 2.5
bool <- TRUE
char <- "a"
compl <- 1+1i

## Створити вектори, які: містить послідовність з 5 до 75; містить числа 3.14,
## 2.71, 0, 13; 100 значень TRUE.

first <- c(5:75)
second <- c(3.14, 2.71, 0, 13)
third <- as.logical(c(1:100))

## Створити наступну матрицю за допомогою matrix, та за допомогою cbind або rbind

matrix_vector <- c(0.5, 3.9,0,2,1.3,131,2.2, 7,3.5,2.8,4.6,5.1)
first_matrix <- matrix(matrix_vector, ncol=3)
## method 2
first_row <- c(0.5, 1.3, 3.5)
second_row <- c(3.9,131,2.8)
third_row <- c(0,2.2,4.6)
fourth_row <- c(2,7,5.1)
second_matrix <- rbind(first_row,second_row,third_row,fourth_row)

## 4. Створити довільний список (list), в який включити всі базові типи.

lst <- list("a", TRUE, 5L, 1.3, 1i)

## 5. Створити фактор з трьома рівнями «baby», «child», «adult».

fctr <- factor(levels = c("baby", "child", "adult"))

## 6. Знайти індекс першого значення NA в векторі 1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11. Знайти кількість значень NA.

vctr <- c(1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11)
na_first_position <- min(which(is.na(vctr)))
na_count <- sum(is.na(vctr))

## 7. Створити довільний data frame та вивести в консоль.

data_frame <- data.frame(first =(1:3), second=c(1i,2i,3i))
data_frame

## 8. Змінити імена стовпців цього data frame.

colnames(data_frame) <- c("numeric", "complex")