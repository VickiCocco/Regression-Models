MPGvsGearsMan <- 
        fitManGears <- lm(mpg ~ gears, dtAutoCars)

        fitManGears <- ggplot(dtManCars, aes(x = gears, 
                                        y = mpg,
                                        fill = gears))
        fitManGears <- fitManGears + geom_point(size = 3,
                                    shape=21,
                                    colour = "black")
        fitManGears <- fitAutoGears + geom_abline(intercept = coef(fitManGears)[1],
                                                   slope = coef(fitManGears)[2],
                                                   size = 1,
                                                   color = "darkblue")
        fitManGears <- fitManGears + labs(x = "Number of Forward Gears" ,
                              y = "Miles Per Gallon (US)", 
                              title = "Manual Transmission # Forward Gears vs MPG")
        fitManGears <- fitManGears + theme(plot.title=element_text(size=14, 
                                                       hjust=0.5, 
                                                       face="bold", 
                                                       colour="darkorchid4", 
                                                       vjust=-1),                                                          panel.grid.major = element_line(colour = "grey39"), 
                               panel.grid.minor = element_line(colour = "grey24"),
                               panel.background = element_blank(),
                               legend.position = "none")
        plot(fitManGears)
