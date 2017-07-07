MPGvsDRAT <-
        
        # regression between mpg and all transmissions
        fitDRAT <- lm(mpg ~ drat, dtCars)

        sink("Regressions/fitDRAT.txt")
        print(summary(fitDRAT))
        sink()

        fitDRATPlot <- ggplot(dtCars, aes(x = drat,  
                                         y = mpg,
                                         fill = Transmission))
        fitDRATPlot <- fitDRATPlot + geom_point(size = 4,
                                              shape=21,
                                              colour = "black")
        fitDRATPlot <- fitDRATPlot + geom_abline(intercept = coef(fitDRAT)[1],
                                               slope = coef(fitDRAT)[2],
                                               size = 1,
                                               color = "darkblue")
        fitDRATPlot <- fitDRATPlot + labs(x = "Rear Gear Ratio" ,
                                        y = "Miles Per Gallon (US)", 
                                        title = "MPG vs Rear Gear Ratio")
        fitDRATPlot <- fitDRATPlot + theme(plot.title=element_text(size=14, 
                                                                 hjust=0.5, 
                                                                 face="bold", 
                                                 colour="darkorchid4",                                                                  vjust=-1),                                                          panel.grid.major = element_line(colour = "grey39"), 
                                panel.grid.minor = element_line(colour = "grey24"),
                                 panel.background = element_blank(),
                                 legend.position = "none")
        
        jpeg("Plots/fitDRATPlot.jpg")
        plot(fitDRATPlot)
        dev.off()
        
        plot(fitDRATPlot)
