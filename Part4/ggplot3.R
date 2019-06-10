library(ggplot2)
data1 <- mpg
data1
library(dplyr)

  #자동차 배기량에 따라 고속도로 연비가 다른지 알아보려고 합니다. 
  #displ(배기량)이 4 이하인 자동차와 5 이상인 자동차 중 어떤 자동차의
  #hwy(고속도로 연비)가 평균적으로 더 높은지 알아보세요.
  
data2 <- select(data1, manufacturer, displ, cty, hwy)
data2

data3 <- filter(data2, displ < 4 | displ > 5) 
data3

data4 <- filter(data3, displ <4)
data4

data5 <- filter(data3, displ>5)
data5

data4 %>%
  summarise(average = mean(hwy,na.rm=T)) 

#avr= 26.6

data5 %>%
  summarise(average = mean(hwy,na.rm=T))

#avr = 18.1

# (displ<4)  > (displ>5)


#자동차 제조 회사에 따라 도시 연비가 다른지 알아보려고 합니다. 
#"audi"와 "toyota" 중 어느 manufacturer(자동차 제조 회사)의 cty(도시 연비)가
#평균적으로 더 높은지 알아보세요.


manu2 <- select(data1, manufacturer, cty)
manu2

manu3 <- filter(manu2, manufacturer %in% c('audi','toyota')) 
manu3

manu4 <- filter(manu3, manufacturer %in% c('audi'))
manu4

manu5 <- filter(manu3, manufacturer %in% c('toyota'))
manu5

manu4 %>%
  summarise(average = mean(cty,na.rm=T)) 

#avr= 17.6

manu5 %>%
  summarise(average = mean(cty,na.rm=T))

#avr=18.5

# toyota > audi

#"chevrolet", "ford", "honda" 자동차의 고속도로 연비 평균을 알아보려고 합니다. 
#이 회사들의 자동차를 추출한 뒤 hwy 전체 평균을 구해보세요

ma2 <- select(data1, manufacturer, hwy)
ma2

ma3 <- filter(ma2, manufacturer %in% c('chevrolet','ford','honda'))
ma3

ma4 <- filter(ma3, manufacturer %in% c('chevrolet'))
ma4

ma5 <- filter(ma3, manufacturer %in% c('ford'))
ma5

ma6 <- filter(ma3, manufacturer %in% c('honda'))
ma6

