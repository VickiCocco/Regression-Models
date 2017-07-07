MPGvsAllGears <-
        
        fitAllGears <- lm(mpg ~ factor(gears), dtCars)
        sink("Regressions/fitAllGears.txt")
        print(summary(fitAllGears))
        sink()


        fitAllGearsPlot <- ggplot(dtCars, aes(x = gears, 
                                                y = mpg,
                                                fill = Transmission))
        fitAllGearsPlot <- fitAllGearsPlot + geom_point(size = 3,
                                                shape=21,
                                                colour = "black")
        fitAllGearsPlot <- fitAllGearsPlot + geom_abline(intercept = coef(fitAllGears)[1],
                                                   slope = coef(fitAllGears)[2],
                                                   size = 1,
                                                   color = "darkblue")
        fitAllGearsPlot <- fitAllGearsPlot + labs(x = "Number of Forward Gears" ,
                                        y = "Miles Per Gallon (US)", 
                                        title = "Number of Forward Gears vs MPG")
        fitAllGearsPlot <- fitAllGearsPlot + theme(plot.title=element_text(size=14, 
                                                       hjust=0.5, 
                                                       face="bold", 
                                                       colour="darkorchid4", 
                                                       vjust=-1),                                                       panel.grid.major = element_line(colour = "grey39"), 
                                panel.grid.minor = element_line(colour = "grey24"),
                                panel.background = element_blank())
                            
        jpeg("Plots/fitAllGearsPlot.jpg")
        plot(fitAllGearsPlot)
        dev.off()
        
        plot(fitAllGearsPlot)
        
