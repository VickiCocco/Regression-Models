initializeData <-
        
        # selecting outcome and multivariant data and making appropriate files
        mpg <- mtcars$mpg
        transtype <- mtcars$am
        gears <- mtcars$gear
        dtCars <- cbind(mpg, transtype)
        dtCars <- cbind(dtCars, gears)
        dtCars <- tbl_df(dtCars)
        
        dtCars <- dtCars %>%
                select(mpg, gears) %>%
                mutate(transmission = ifelse(transtype == 0, "automatic", "manual"))
        
        dtManCars <- filter(dtCars, transmission == "manual")
        dtAutoCars <- filter(dtCars, transmission == "automatic")
        
        rm(mpg, gears, transtype)
        
        
        
 
        