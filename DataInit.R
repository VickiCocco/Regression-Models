initializeData <-
        
  
        # using the mtcars dataset from R
        # extracting the data used for analysis and organizing factor variables
        mpg <- mtcars$mpg
        transtype <- mtcars$am
        gears <-(mtcars$gear)
        dtCars <- cbind(mpg, transtype)
        dtCars <- cbind(dtCars, gears)
        dtCars <- tbl_df(dtCars)
        dtCars$gears <- as.factor(dtCars$gears)
        
        dtCars <- dtCars %>%
                select(mpg, gears) %>%
                mutate(Transmission = ifelse(transtype == 0, "Automatic", "Manual"))
        
        dtCars$Transmission <- as.factor(dtCars$Transmission)
        
        dtManCars <- filter(dtCars, Transmission == "Manual")
        dtAutoCars <- filter(dtCars, Transmission == "Automatic")
        
        rm(mpg, gears, transtype)
        
        
        
 
        