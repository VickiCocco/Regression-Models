Regressions <-
        
        lm(mpg ~ transmission, dtCars)

        # show basic plot data - need to create dose as a factor
        plot2 <- ggplot(dtCars, aes(x = transmission, 
                                        y = mpg,
                                        colour = transmission))
        plot2 <- plot2 + geom_point()
        plot2 <- plot2 + labs(x = "Automatic Transmission T/F" ,
                              y = "Miles Per Gallon (US)", 
                              title = "Transmission Type vs MPG")
        plot2 <- plot2 + theme(plot.title=element_text(size=14, 
                                                       hjust=0.5, 
                                                       face="bold", 
                                                       colour="darkorchid4", 
                                                       vjust=-1))
        
        print(plot2)