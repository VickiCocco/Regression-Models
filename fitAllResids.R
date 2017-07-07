fitAllResids <-

        fitAllResid <- ggplot(dtCars, aes(x = Transmission,  
                                         y = mpg,
                                         fill = Transmission))
        fitAllResids <- fitAllResids + geom_point(size = 4,
                                              shape=21,
                                              colour = "black")
        fitAllResids <- fitAllResids + geom_abline(intercept = coef(fitAll)[1],
                                               slope = coef(fitAll)[2],
                                               size = 1,
                                               color = "darkblue")
        fitAllResids <- fitAllResids + labs(x = "Automatic / Manual Transmission" ,
                                        y = "Miles Per Gallon (US)", 
                                        title = "Transmission Type vs MPG")
        fitAllResids <- fitAllResids + theme(plot.title=element_text(size=14, 
                                                         hjust=0.5, 
                                                         face="bold", 
                                                         colour="darkorchid4",                                                   vjust=-1),                                                                 panel.grid.major = element_line(colour = "grey39"), 
                                panel.grid.minor = element_line(colour = "grey24"),
                                panel.background = element_blank(),
                                legend.position = "none")
        
        jpeg("Plots/fitAllResids.jpg")
        plot(fitAllResids)
        dev.off()
        
        plot(fitAllResids)