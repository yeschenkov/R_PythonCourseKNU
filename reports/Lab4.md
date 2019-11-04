> data <- read.csv("C:/Users/v.yeshchenkov/Documents/RLabs/hw1_data.csv")
> 
> ## 1. Які назви стовпців файлу даних?
> 
> names(data)
[1] "Ozone"   "Solar.R" "Wind"    "Temp"    "Month"   "Day"    
> 
> ## 2. Виведіть перші 6 строк фрейму даних
> 
> head(data, 6)
  Ozone Solar.R Wind Temp Month Day
1    41     190  7.4   67     5   1
2    36     118  8.0   72     5   2
3    12     149 12.6   74     5   3
4    18     313 11.5   62     5   4
5    NA      NA 14.3   56     5   5
6    28      NA 14.9   66     5   6
> 
> ## 3. Скільки спостерігань (строк) в дата фреймі?
> 
> nrow(data)
[1] 153
> 
> ## 4. Виведіть останні 10 строк дата фрейму.
> 
> tail(data, 10)
    Ozone Solar.R Wind Temp Month Day
144    13     238 12.6   64     9  21
145    23      14  9.2   71     9  22
146    36     139 10.3   81     9  23
147     7      49 10.3   69     9  24
148    14      20 16.6   63     9  25
149    30     193  6.9   70     9  26
150    NA     145 13.2   77     9  27
151    14     191 14.3   75     9  28
152    18     131  8.0   76     9  29
153    20     223 11.5   68     9  30
> 
> ## 5. Як багато значень «NA» в стовпці «Ozone»?
> 
> sum(is.na(data$Ozone))
[1] 37
> 
> ## 6. Яке середнє (mean) стовпця «Ozone». Виключити «NA» значення.
> 
> mean(data$Ozone, na.rm = TRUE)
[1] 42.12931
> 
> ## 7. Виведіть частину набору даних (subset) зі значенням «Ozone» > 31 та
> ##«Temp» > 90. Яке середнє (mean) значень «Solar.R» в цьому наборі даних
> ##(subset)?
> 
> subs_value <- subset(data, Temp>90 & Ozone>31, select=c(Solar.R, Ozone, Temp))
> subs_value
    Solar.R Ozone Temp
69      267    97   92
70      272    97   92
120     203    76   97
121     225   118   94
122     237    84   96
123     188    85   94
124     167    96   91
125     197    78   92
126     183    73   93
127     189    91   93
> mean(subs_value$Solar.R)
[1] 212.8
> 
> ## 8. Яке середнє значення (mean) для «Temp» для червня («Month» дорівнює
> ##6)?
> 
> mean(data$Temp[which(data$Month == 6)])
[1] 79.1
> 
> ## 9. Яке максимальне значення «Ozone» для травня («Month» дорівнює 5)?
> 
> max(data$Ozone[which(data$Month == 5)], na.rm = T)
[1] 115