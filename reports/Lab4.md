data <- read.csv("C:/Users/v.yeshchenkov/Documents/RLabs/hw1_data.csv")<br />

 ## 1. Які назви стовпців файлу даних?
 
 names(data)<br />
[1] "Ozone"   "Solar.R" "Wind"    "Temp"    "Month"   "Day"    <br />
 
 ## 2. Виведіть перші 6 строк фрейму даних
 
 head(data, 6)<br />
  Ozone Solar.R Wind Temp Month Day<br />
1    41     190  7.4   67     5   1<br />
2    36     118  8.0   72     5   2<br />
3    12     149 12.6   74     5   3<br />
4    18     313 11.5   62     5   4<br />
5    NA      NA 14.3   56     5   5<br />
6    28      NA 14.9   66     5   6<br />
 
 ## 3. Скільки спостерігань (строк) в дата фреймі?
 
 nrow(data)<br />
[1] 153<br />
 
 ## 4. Виведіть останні 10 строк дата фрейму.
 
 tail(data, 10)<br />
    Ozone Solar.R Wind Temp Month Day<br />
144    13     238 12.6   64     9  21<br />
145    23      14  9.2   71     9  22<br />
146    36     139 10.3   81     9  23<br />
147     7      49 10.3   69     9  24<br />
148    14      20 16.6   63     9  25<br />
149    30     193  6.9   70     9  26<br />
150    NA     145 13.2   77     9  27<br />
151    14     191 14.3   75     9  28<br />
152    18     131  8.0   76     9  29<br />
153    20     223 11.5   68     9  30<br />
 
 ## 5. Як багато значень «NA» в стовпці «Ozone»?
 
 sum(is.na(data$Ozone))<br />
[1] 37<br />
 
 ## 6. Яке середнє (mean) стовпця «Ozone». Виключити «NA» значення.
 
 mean(data$Ozone, na.rm = TRUE)<br />
[1] 42.12931<br />
 
 ## 7. Виведіть частину набору даних (subset) зі значенням «Ozone» > 31 та «Temp» > 90. Яке середнє (mean) значень «Solar.R» в цьому наборі даних (subset)?
 
 subs_value <- subset(data, Temp>90 & Ozone>31, select=c(Solar.R, Ozone, Temp))<br />
 subs_value<br />
    Solar.R Ozone Temp<br />
69      267    97   92<br />
70      272    97   92<br />
120     203    76   97<br />
121     225   118   94<br />
122     237    84   96<br />
123     188    85   94<br />
124     167    96   91<br />
125     197    78   92<br />
126     183    73   93<br />
127     189    91   93<br />
 mean(subs_value$Solar.R)<br />
[1] 212.8<br />
 
 ## 8. Яке середнє значення (mean) для «Temp» для червня («Month» дорівнює 6)?
 
 mean(data$Temp[which(data$Month == 6)])<br />
[1] 79.1<br />
 
 ## 9. Яке максимальне значення «Ozone» для травня («Month» дорівнює 5)?
 
 max(data$Ozone[which(data$Month == 5)], na.rm = T)<br />
[1] 115<br />