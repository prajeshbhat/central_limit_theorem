library(ggplot2)
library(MASS)

N <- 10000
repeat_times <- 1000

unif_a <- 0
unif_b <- 1

unif_mean <- (unif_b + unif_a)/2
unif_sd <- sqrt((unif_b - unif_a)^2/12)
sample_sd <- unif_sd/sqrt(N)

unif_average <- sapply(seq(1, repeat_times), 
                   function(i){
                     random_unif <- runif(N, unif_a, unif_b)
                     return(mean(random_unif))
                   })

ggplot(data =NULL)+
  geom_density(aes(unif_average))
 
print(c(unif_mean, sample_sd))
fitdistr(unif_average, "normal")
