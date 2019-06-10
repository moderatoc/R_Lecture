# Anscombe's Quartet
# 기술통계량(평균(x), 평균(y), 분산(x), 분산(y), 상관계수, 회귀식)이 동일한 4개의 데이터 셋

anscombe
str(anscombe)
ans_x_mean <- anscombe %>%
  select(x1,x2,x3,x4) %>%
  summarise_each(list(mean), x1,x2,x3,x4)
ans_x_mean
ans_y_mean anscombe %>%
  select(y1,y2,y3,y4) %>%
  summarise_each(list(mean), y1,y2,y3,y4)
ans_y_mean
ans_x_var anscombe %>%
  select(x1,x2,x3,x4) %>%
  summarise_each(list(var), y1,y2,y3,y4)
ans_x_var
ans_y_var anscombe %>%
  select(y1,y2,y3,y4) %>%
  summarise_each(list(var), y1,y2,y3,y4)
ans_y_var