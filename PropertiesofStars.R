library(tidyverse)
library(dslabs)
data(stars)
options(digits = 3) # 3 Sign. Digits

#finding the mean magnitude 'star luminosity'
mean(stars$magnitude)

#finding the sd of magnitude
sd(stars$magnitude)

#making a density plot of the magnitude, finding out how many peaks there are in the data
magnitude_density <- stars %>%
  ggplot(aes(x = magnitude)) +
  geom_density()
magnitude_density

#Examining the temperature distribution of the stars
temp <- stars %>% 
  ggplot(aes(temp)) +
  geom_density()

temp_dist<- stars %>%
  filter(temp > 20000) %>%
  ggplot(aes(sample = temp)) +
  geom_qq() +
  geom_abline()
temp_density


#magnitude vs temperature trends
mag_vs_temp <- stars %>%
  ggplot(aes(x = temp, y = magnitude)) +
  geom_point()
mag_vs_temp

#Examining the trend between luminosity and temp
flipped <- stars %>%
  ggplot(aes(x = log10(temp), y= magnitude)) +
  geom_point(aes(color = type))+
  scale_y_reverse() +
  scale_x_reverse()
flipped

