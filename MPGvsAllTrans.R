MPGvsAllTrans <-

        # regression between mpg and all transmissions
        fitAll <- lm(mpg ~ Transmission, dtCars)

        sink("Regressions/fitAll.txt")
        print(summary(fitAll))
        sink()
        

        fitAllPlot <- ggplot(dtCars, aes(x = Transmission,  
                                        y = mpg,
                                        fill = Transmission))
        fitAllPlot <- fitAllPlot + geom_point(size = 4,
                                        shape=21,
                                        colour = "black")
        fitAllPlot <- fitAllPlot + geom_abline(intercept = coef(fitAll)[1],
                                        slope = coef(fitAll)[2],
                                        size = 1,
                                        color = "darkblue")
        fitAllPlot <- fitAllPlot + labs(x = "Automatic / Manual Transmission" ,
                                y = "Miles Per Gallon (US)", 
                                title = "Transmission Type vs MPG")
        fitAllPlot <- fitAllPlot + theme(plot.title=element_text(size=14, 
                                                       hjust=0.5, 
                                                       face="bold", 
                                                       colour="darkorchid4", 
                                                       vjust=-1),                                                        panel.grid.major = element_line(colour = "grey39"), 
                                panel.grid.minor = element_line(colour = "grey24"),
                                panel.background = element_blank(),
                                legend.position = "none")
       
        jpeg("Plots/fitAllPlot.jpg")
        plot(fitAllPlot)
        dev.off()
        
        plot(fitAllPlot)
 