Histograms <-
        plot1 <- ggplot(dtmpg,(aes(x=value)))
        plot1 <- plot1 + geom_histogram(aes(y = ..density.., fill = ..count..), binwidth = 2)
        plottitle <- "MPG Distribution - Histogram"
        plot1 <- plot1 + labs(x = "Miles Per Gallon" ,
                              y = "MPG Frequency", 
                              title = plottitle)
        
        plot1 <- plot1 + theme(plot.title=element_text(size=14, 
                                                       hjust=0.5, 
                                                       face="bold", 
                                                       colour="darkorchid4", 
                                                       vjust=-1))
        
        
        
        print(plot1)