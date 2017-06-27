Regressions <-
        
        lm(mpg ~ transmission, dtCars)

        # show basic plot data - need to create dose as a factor
        plot2 <- ggplot(dtCars, aes(x = transmission, 
                                        y = mpg,
                                        fill = transmission))
        plot2 <- plot2 + geom_point(size = 3,
                                        shape=21,
                                        colour = "black")
        plot2 <- plot2 + labs(x = "Automatic / Manual Transmission" ,
                              y = "Miles Per Gallon (US)", 
                              title = "Transmission Type vs MPG")
        plot2 <- plot2 + theme(plot.title=element_text(size=14, 
                                                       hjust=0.5, 
                                                       face="bold", 
                                                       colour="darkorchid4", 
                                                       vjust=-1),                                                          panel.grid.major = element_line(colour = "grey39"), 
                                panel.grid.minor = element_line(colour = "grey24"),
                                panel.background = element_blank(),
                                legend.position = "none")
        print(plot2)