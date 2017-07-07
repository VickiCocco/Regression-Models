MPGvs4Gears <- 
        fit4Gears <- lm(mpg ~ Transmission, dt4Gears)

        sink("Regressions/fit4Gears.txt")
        print(summary(fit4Gears))
        sink()
        
        
        fit4GearsPlot <- ggplot(dt4Gears, aes(x = Transmission, 
                                                 y = mpg,
                                                 fill = Transmission))
        
        fit4GearsPlot <- fit4GearsPlot + geom_point(size = 3,
                                                shape=21,
                                                colour = "black")
        
        fit4GearsPlot <- fit4GearsPlot + geom_abline(intercept = coef(fit4Gears)[1],
                                                         slope = coef(fit4Gears)[2],
                                                         size = 1,
                                                         color = "darkblue")
        
        fit4GearsPlot <- fit4GearsPlot + labs(x = "Transmission Type" ,
                                y = "Miles Per Gallon (US)", 
                                title = "MPG vs 4 Gears either Transmission Type")
        fit4GearsPlot <- fit4GearsPlot + theme(plot.title=element_text(size=14, 
                                                                   hjust=0.5, 
                                                                   face="bold", 
                                                                   colour="darkorchid4", 
                                                                   vjust=-1),
                                               
                                panel.grid.major = element_line(colour = "grey39"), 
                                   panel.grid.minor = element_line(colour = "grey24"),
                                   panel.background = element_blank())
        
        jpeg("Plots/fit4GearsPlot.jpg")
        plot(fit4GearsPlot)
        dev.off()
        
        
        plot(fit4GearsPlot)