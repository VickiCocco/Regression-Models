ainitializeData <-
        
  
        # using the mtcars dataset from R
        # extracting the data used for analysis and organizing factor variables
        mpg <- mtcars$mpg
        transtype <- mtcars$am
        gears <-(mtcars$gear)
        drat <- (mtcars$drat)
        dtCars <- cbind(mpg, transtype)
        dtCars <- cbind(dtCars, gears)
        dtCars <- cbind(dtCars, drat)
        dtCars <- tbl_df(dtCars)
        dtCars$gears <- as.factor(dtCars$gears)
        
        dtCars <- dtCars %>%
                select(mpg, gears, drat) %>%
                mutate(Transmission = ifelse(transtype == 0, "Automatic", "Manual"))
        
        dtManCars <- filter(dtCars, Transmission == "Manual")
        dtAutoCars <- filter(dtCars, Transmission == "Automatic")
        dt4Gears <- filter(dtCars, gears == "4")
        
        rm(mpg, gears, drat, transtype)
        
        
        
 
        