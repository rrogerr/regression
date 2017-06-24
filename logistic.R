setwd("/home/rogelio/Desktop/datasciencecoursera/regression")

download.file("https://dl.dropboxusercontent.com/u/7710864/data/ravensData.rda",
              destfile = "./ravensData.rda", method = "curl")

load("./ravensData.rda")

head(ravensData)

logreg <- glm(ravenWinNum ~ ravenScore, data = ravensData, family = "binomial")

summary(logreg)

# log odds
predict(logreg, data.frame(ravenScore = 100))

# probability
predict(logreg, data.frame(ravenScore = 100), type = "response")