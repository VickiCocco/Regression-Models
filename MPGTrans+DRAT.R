MPGvsTransDRAT <-
        
        # regression between mpg and all transmissions
        fitTransDRAT <- lm(mpg ~ Transmission + drat, dtCars)

        sink("Regressions/fitTransDRAT.txt")
        print(summary(fitTransDRAT))
        sink()
        

