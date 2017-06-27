MPGvsAllGears <-
        
        fitAllGears <- lm(mpg ~ gears, dtCars)

        fitAllGears <- ggplot(dtCars, aes(x = gears, 
                                                y = mpg,
                                                fill = Transmission))
        fitAllGears <- fitAllGears + geom_point(size = 3,
                                                shape=21,
                                                colour = "black")
        fitAllGears <- fitAllGears + geom_abline(intercept = coef(fitAllGears)[1],
                                                   slope = coef(fitAllGears)[2],
                                                   size = 1,
                                                   color = "darkblue")
        fitAllGears <- fitAllGears + labs(x = "Number of Forward Gears" ,
                                        y = "Miles Per Gallon (US)", 
                                        title = "Number of Forward Gears vs MPG")
        fitAllGears <- fitAllGears + theme(plot.title=element_text(size=14, 
                                                       hjust=0.5, 
                                                       face="bold", 
                                                       colour="darkorchid4", 
                                                       vjust=-1),                                                       panel.grid.major = element_line(colour = "grey39"), 
                             panel.grid.minor = element_line(colour = "grey24"),
                             panel.background = element_blank())
                            
        plot(fitAllGears)
