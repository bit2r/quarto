
# 기본 -----------------
## 벡터 데이터
cats <- c(1, 3, 5, 7, 9)
dogs <- c(8, 6, 4, 2, 1)

## 막대 그래프
barplot(cats, col="#c9cba6", ylim = c(0,10))

## 선그래프
lines(dogs, pch=22, lty=2, col="#0631f1", lwd = 3)

## 제목
title(main = "동물병원 입원 동물수", col.main="red", font.main = 4, cex.main = 3.5)

# 글꼴 ligature ----------------

if( cats[1] != dogs[1]) {
    print("개와 고양이는 달라요")
} else {
   print("개와 고양이는 같다.")
}

# 단축키

# # # %>%  %>%  %>%  %>% 
# # # <-  <-  <-  <-  <- 

? barplot
