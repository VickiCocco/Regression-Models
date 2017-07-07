MPGvsGearsAuto <- 
        fitAutoGears <- lm(mpg ~ factor(gears), dtAutoCars)
        sink("Regressions/fitAutoGears.txt")
        print(summary(fitAutoGears))
        sink()
 
        fitAutoGearsPlot <- ggplot(dtAutoCars, aes(x = gears, 
                                    y = mpg,
                                    fill = gears))
        fitAutoGearsPlot <- fitAutoGearsPlot + geom_point(size = 3,
                                    shape=21,
                                    colour = "black")
        fitAutoGearsPlot <- fitAutoGearsPlot + geom_abline(intercept = coef(fitAutoGears)[1],
                                slope = coef(fitAutoGears)[2],
                                size = 1,
                                color = "darkblue")
        fitAutoGearsPlot <- fitAutoGearsPlot + labs(x = "Number of Forward Gears" ,
                                y = "Miles Per Gallon (US)", 
                                title = "Automatic Transmission # Forward Gears vs MPG")
        fitAutoGearsPlot <- fitAutoGearsPlot + theme(plot.title=element_text(size=14, 
                                                       hjust=0.5, 
                                                       face="bold", 
                                                       colour="darkorchid4", 
                                                       vjust=-1),                                                       panel.grid.major = element_line(colour = "grey39"), 
                               panel.grid.minor = element_line(colour = "grey24"),
                               panel.background = element_blank(),
                               legend.position = "none")
        
        jpeg("Plots/fitAutoGearsPlot.jpg")
        plot(fitAutoGearsPlot)
        dev.off()
        
        plot(fitAutoGearsPlot)
         