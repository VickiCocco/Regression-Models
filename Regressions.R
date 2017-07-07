Regressions <-

        fitGearsDRAT <- lm(mpg ~ factor(gears) + drat, dtCars)

        sink("Regressions/fitGearsDRAT.txt")
        print(summary(fitGearsDRAT))
        sink()
        
        print(summary(fitGearsDRAT))
