Data <- read.csv("2016-trump-shift.csv")

M0 <- lm(I((obama/total2012)- (clinton/total2016)) ~ paper, data=Data)

M1 <- lm(I((obama/total2012)- (clinton/total2016)) ~ paper + white + black + 
           collegeed + log(pop), data=Data)

M2 <- lm(I(total2016 - total2012) ~ paper + white + black + collegeed + log(pop), data=Data)


stargazer(M0, M1, M2, type="html", title="Simple Regression of Wisconsin County Presidential Election Results",
          dep.var.labels=c("Vote Share: Obama - Clinton", "Turnout: 2016 - 2012"),
          covariate.labels = c("Paper Ballots", "% White", "% Black", "% College Educated",
                               "County Population (logged)"),
          omit.stat=c("f","ser"))

top5black <- sqldf("select county, black, trump, clinton, total2016, 
                   romney, obama, total2012 from Data where black >= 4")
