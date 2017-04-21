library(RCurl)
library(stargazer)

data <- getURL("https://raw.githubusercontent.com/svmiller/2016-trump-shift/master/2016-trump-shift.csv")
Data <- read.csv(text = data)
summary(Data)


Data$voteshare_oc <- with(Data, (obama/total2012)- (clinton/total2016))
Data$turnoutdiff <- with(Data, total2016 - total2012)

scale2sd <- function(x) {
  return ((x-mean(x))/(2*sd(x)))
}

Data$z_logpop <- with(Data, scale2sd(log(pop+1)))
Data$z_white <- with(Data, scale2sd(log(white+1)))
Data$z_black <- with(Data, scale2sd(log(black+1)))
Data$z_collegeed <- with(Data, scale2sd(log(collegeed+1)))

summary(M0 <- lm(voteshare_oc ~ paper, data=Data))
summary(M1 <- lm(voteshare_oc ~ paper + z_white + z_black + z_collegeed + z_logpop, data=Data))
summary(M2 <- lm(turnoutdiff ~ paper + z_white + z_black + z_collegeed + z_logpop, data=Data))


stargazer(M0, M1, M2, type="text", title="Simple Regression of Wisconsin County Presidential Election Results",
          dep.var.labels=c("Vote Share: Obama - Clinton", "Turnout: 2016 - 2012"),
          covariate.labels = c("Paper Ballots", 
                               "% White (standardized)", 
                               "% Black  (standardized)", 
                               "% College Educated  (standardized)",
                               "County Population Size (logged, standardized)"),
          omit.stat=c("f","ser"))

