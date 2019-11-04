> ##1. Створити матрицю mat з 5 стовпцями та 10 строками за допомогою
> ##matrix з випадковими даними (функція rnorm(50)).
> 
> matrx <- matrix(rnorm(50), ncol = 5)
> 
> ##2. Знайти максимальне значення в кожному стовпці.
> 
> apply(matrx, 2, max)
[1] 0.6330513 1.0269271 1.0610630 0.6114757 1.3620296
> 
> ##3. Знайти середнє (mean) значення кожного стовпця.
> 
> apply(matrx, 2, mean)
[1]  0.04853761 -0.11614658  0.05874496 -0.44401558  0.20578500
> 
> ##4. Знайти мінімальне значення в кожному рядку.
> 
> apply(matrx, 1, min)
 [1] -0.4283105 -1.3021651 -1.3083347 -0.2938619 -0.9153979 -0.7446137 -1.8793701 -0.8117374 -1.5302294 -0.5208693
> 
> ##5. Відсортувати кожен стовбець таблиці.
> 
> sorted_matrx <- apply(matrx, 2, sort, decreasing = F)
> sorted_matrx
             [,1]       [,2]       [,3]        [,4]       [,5]
 [1,] -0.91539793 -0.8117374 -1.3021651 -1.87937010 -0.7708474
 [2,] -0.72211441 -0.7572506 -0.9339241 -1.53022943 -0.6511676
 [3,] -0.11649142 -0.7446137 -0.5590103 -1.30833472 -0.2938619
 [4,] -0.04736486 -0.5208693  0.0678224 -0.65738847 -0.1581002
 [5,] -0.02126384 -0.4283105  0.2460534 -0.37296824  0.1227781
 [6,]  0.20762022 -0.3970674  0.2575297 -0.22811756  0.1856876
 [7,]  0.30788200 -0.2386372  0.4829194  0.08280057  0.3602821
 [8,]  0.55720607  0.8174438  0.5891018  0.28710759  0.7497728
 [9,]  0.60224900  0.8926494  0.6780594  0.55486885  1.1512769
[10,]  0.63305131  1.0269271  1.0610630  0.61147574  1.3620296
> 
> ##6. Знайти кількість значень < 0 для кожного стовпця. Використати свою
> ##функцію.
> 
> neg_num_count <- function(x) {
+   return(sum(x < 0))
+ }
> 
> apply(matrx, 2, neg_num_count)
[1] 5 7 3 6 4
> 
> ##7. Вивести вектор з булевими значеннями TRUE та FALSE. TRUE, якщо в
> ##стовпці є елементи >2, FALSE – якщо немає.
> 
> any_el <- function (x) {
+   return(any(x>2))
+ }
> 
> apply(matrx, 2, any_el)
[1] FALSE FALSE FALSE FALSE FALSE
> 
> ##8. Створить список list1 <- list(observationA = c(1:5, 7:3), observationB =
> ##matrix(1:6, nrow=2)). Для цього списку знайдіть sum за допомогою lapply.
> 
> list1 <- list(observationA = c(1:5, 7:3), observationB = matrix(1:6, nrow=2))
> 
> lapply(list1, sum)
$observationA
[1] 40

$observationB
[1] 21

> 
> ##9. Для кожного елементу списку list1 знайдіть максимальне та мінімальне
> ##значення (range) за допомогою lapply та sapply.
> lapply(list1, min)
$observationA
[1] 1

$observationB
[1] 1

> 
> sapply(list1, max)
observationA observationB 
           7            6 
> 
> ##10.Для вбудованого набору даних InsectSprays знайти середнє count для
> ##кожного spray.
> 
> split_insects <- split(InsectSprays$count,InsectSprays$spray)
> 
> lapply(split_insects, mean)
$A
[1] 14.5

$B
[1] 15.33333

$C
[1] 2.083333

$D
[1] 4.916667

$E
[1] 3.5

$F
[1] 16.66667