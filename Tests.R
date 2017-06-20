Tests <-
        H_0 <- paste("H", "\U2080")
        H_a <- paste("H", "\U2081")
        
        print("First Hypothesis")
        print(paste(H_0, " Status Quo Toothgrowth Length"))
        print(paste(H_a, " Either Delivery Method, Orange Juice or Ascorbic Acid(Vitamin C) Improves tooth Growth "))
        
        print ("T Test Length ~ Supplement")
        print(t.test(Length ~ Supplement, tblToothGrowth))
