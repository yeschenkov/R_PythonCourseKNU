data <- read.csv("C:/Users/v.yeshchenkov/Documents/RLabs/hw1_data.csv")

## 1. Які назви стовпців файлу даних?

names(data)

## 2. Виведіть перші 6 строк фрейму даних

head(data, 6)

## 3. Скільки спостерігань (строк) в дата фреймі?

nrow(data)

## 4. Виведіть останні 10 строк дата фрейму.

tail(data, 10)

## 5. Як багато значень «NA» в стовпці «Ozone»?

sum(is.na(data$Ozone))

## 6. Яке середнє (mean) стовпця «Ozone». Виключити «NA» значення.

mean(data$Ozone, na.rm = TRUE)

## 7. Виведіть частину набору даних (subset) зі значенням «Ozone» > 31 та
##«Temp» > 90. Яке середнє (mean) значень «Solar.R» в цьому наборі даних
##(subset)?

subs_value <- subset(data, Temp>90 & Ozone>31, select=c(Solar.R, Ozone, Temp))
subs_value
mean(subs_value$Solar.R)

## 8. Яке середнє значення (mean) для «Temp» для червня («Month» дорівнює
##6)?

mean(data$Temp[which(data$Month == 6)])

## 9. Яке максимальне значення «Ozone» для травня («Month» дорівнює 5)?

max(data$Ozone[which(data$Month == 5)], na.rm = T)
  