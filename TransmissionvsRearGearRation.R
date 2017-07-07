TransvsDRAT <-
        
                # regression between mpg and all transmissions
                fitTransDRAT <- lm(Transmission ~ drat, dtCars)
                
                sink("Regressions/fitTransDRAT.txt")
                print(summary(fitTransDRAT))
                sink()
                
                fitTransDRATPlot <- ggplot(dtCars, aes(x = Transmission,  
                                                  y = drat,
                                                  fill = Transmission))
                fitTransDRATPlot <- fitTransDRATPlot + geom_point(size = 4,
                                                        shape=21,
                                                        colour = "black")
        fitTransDRATPlot <- fitTransDRATPlot + geom_abline(intercept = coef(fitTransDRAT)[1],
                                                 slope = coef(fitTransDRAT)[2],
                                                         size = 1,
                                                         color = "darkblue")
        fitTransDRATPlot <- fitTransDRATPlot + labs(x = "Transmission" ,
                                                  y = "Rear Gear Ration", 
                                                  title = "Transmission vs Rear Gear Ratio")
        fitTransDRATPlot <- fitTransDRATPlot + theme(plot.title=element_text(size=14, 
                                                   hjust=0.5, 
                                                   face="bold", 
                                                   colour="darkorchid4",                                                                  vjust=-1),                                                          panel.grid.major = element_line(colour = "grey39"), 
                                   panel.grid.minor = element_line(colour = "grey24"),
                                   panel.background = element_blank(),
                                   legend.position = "none")
                
                jpeg("Plots/fitTransDRATPlot.jpg")
                plot(fitTransDRATPlot)
                dev.off()
        
        plot(fitTransDRATPlot)