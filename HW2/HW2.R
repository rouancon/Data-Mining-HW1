#HW 2
#Connor Rouan and Yadukrishnan Sethumadhavan

#Problem 1
#--Task A--
library(psych)
fa.parallel(USJudgeRatings)

#Based on these results, we will only need to extract one principal component

#--Task B--
library(psych)
principal(USJudgeRatings, nfactors=2, rotate="none")

#--Task C--
principal(USJudgeRatings, nfactors=2, rotate="varimax")

#--Task D--
pc <- principal(USJudgeRatings, scores=TRUE)
head(pc$scores)

#--Task E--
pc <- principal(USJudgeRatings, nfactors=2, rotate="none")
factor.plot(pc)
#This graph shows that component 1 is the only principal component since it falls below 0

#--Task F--
#See PDF for explanation


#Problem 2
GID$Class <- NULL
GID$ID <- NULL

#--Task A--
library(psych)
fa.parallel(GID)

#Based on these results, we will need to extract 4 principal component

#--Task B--
principal(GID, nfactors=4,rotate="none")

#--Task C--
principal(GID, nfactors=4, rotate="varimax")

#--Task D--
pc <- principal(GID, nfactors = 4, rotate="none", scores=TRUE)
head(pc$scores)

#--Task E--
pc <- principal(GID, nfactors=4, rotate="none")
factor.plot(pc)

#--Task F--
#See PDF for explanation


#Problem 3
#--Task A--
fa.parallel(Harman23.cor$cov)
#Based on these results, we will need to extract 2 principal component

#--Task B--
harmanpc<-fa(Harman23.cor$cov,nfactors=2, rotate='none')
harmanpc

#--Task C--
harmanrc <- fa(Harman23.cor$cov, nfactors=2, rotate='varimax')
harmanrc

#--Task D--
harmanpc<-fa(Harman23.cor$cov, nfactors=2, rotate='none', scores=TRUE, fm='pa')
harmanpc$weights

#--Task E--
factor.plot(harmanpc)

#--Task F--
fa.diagram(harmanpc)

#--Task G--
#See PDF for explanation



#Problem 4
#--Task A--
fa.parallel(Harman74.cor$cov)
#Based on these results, we will need to extract 4 principal component


#--Task B--
harmanpc<-fa(Harman74.cor$cov,nfactors=4, rotate='none')
harmanpc

#--Task C--
harmanrc<-fa(Harman74.cor$cov, nfactors=4, rotate='varimax')
harmanrc

#--Task D--
harmanpc<-fa(Harman74.cor$cov,nfactors=4, rotate='none', scores=TRUE, fm='pa')
harmanpc$weights

#--Task E--
factor.plot(harmanpc)

#--Task F--
fa.diagram(harmanpc)

#--Task G--
#See PDF for explanation


#Problem 5
#--Task A--
library(psych)
VCD$Class <- NULL
fa.parallel(VCD)

#--Task B--
distance <- dist(VCD, method = "euclidean")
results <- cmdscale(distance)
head(results)

#--Task C--
factor.plot(results, title="Multi-Dimensional Scaling Results")
