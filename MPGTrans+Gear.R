MPGvsTransGears <- 
        
        fitTransGears <- lm(mpg ~ Transmission + factor(gears), dtCars)

        sink("Regressions/fitTransGears.txt")
        print(summary(fitTransGears))
        sink()
        
        fitTransdratInter <- lm(mpg ~ factor(Transmission) * factor(drat), dtCars)
        
        sink("Regressions/fitTransdratInter.txt")
        print(summary(fitTransdratInter))
        sink()
        
