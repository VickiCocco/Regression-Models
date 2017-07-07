GearsvsDrat <-
        fitDRATGears <- lm(drat ~ factor(gears), dtCars)
sink("Regressions/fitDRATGears.txt")
print(summary(fitDRATGears))
sink()

fitDRATGearsPlot <- ggplot(dtCars, aes(x = gears, 
                                           y = drat,
                                           fill = Transmission))
fitDRATGearsPlot <- fitDRATGearsPlot + geom_point(size = 3,
                                                  shape=21,
                                                  colour = "black")
fitDRATGearsPlot <- fitDRATGearsPlot + geom_abline(intercept = coef(fitDRATGears)[1],
                                                   slope = coef(fitDRATGears)[2],
                                                   size = 1,
                                                   color = "darkblue")
fitDRATGearsPlot <- fitDRATGearsPlot + labs(x = "Number of Forward Gears" ,
                                            y = "Miles Per Gallon (US)", 
                                            title = "Automatic Transmission # Forward Gears vs MPG")
fitDRATGearsPlot <- fitDRATGearsPlot + theme(plot.title=element_text(size=14, 
                                                                     hjust=0.5, 
                                                                     face="bold", 
                                                                     colour="darkorchid4", 
                                                                     vjust=-1),                                                       panel.grid.major = element_line(colour = "grey39"), 
                                             panel.grid.minor = element_line(colour = "grey24"),
                                             panel.background = element_blank(),
                                             legend.position = "none")

jpeg("Plots/fitDRATGearsPlot.jpg")
plot(fitDRATGearsPlot)
dev.off()

plot(fitDRATGearsPlot)