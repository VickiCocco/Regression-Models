SummarizeGears <-
        
        dtSumm <- dtCars %>%
                select(gears, Transmission) %>%
                arrange(gears) %>%
                group_by(gears) %>%
                summarise(count=count(gears)) %>%
                spread(Transmission, gears)
                
        