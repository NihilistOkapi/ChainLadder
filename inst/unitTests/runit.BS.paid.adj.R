test.BS.paid.adj <- function() {
  
  test <- BS.paid.adj( Triangle.rep.counts = AutoBI$AutoBIReportedCounts, Triangle.closed = AutoBI$AutoBIClosed, Triangle.paid = AutoBI$AutoBIPaid, regression.type = 'exponential' )
  
  test1 <- BS.paid.adj( Triangle.rep.counts = AutoBI$AutoBIReportedCounts, Triangle.closed = AutoBI$AutoBIClosed, Triangle.paid = AutoBI$AutoBIPaid, regression.type = 'linear' )
  
  check1 <- checkEquals(test, structure(c(1432.93518268829, 1747.77628224761, 1989.14373325504, 
                                2250.0616303118, 2587.43836103051, 2293.67382384549, 2719.49309911284, 
                                2801, 3917.37593039777, 4878.08876711966, 6032.93810942967, 7109.30363394323, 
                                7934.5609790615, 7089.86360368265, 9182, NA, 6495.28128222582, 
                                7923.27353882405, 9716.31558714287, 11174.8830675524, 11917.6654103443, 
                                11771, NA, NA, 8548.32515840869, 10212.2658034973, 12309.3357593803, 
                                13836.2481695907, 15278, NA, NA, NA, 9595.08326567872, 11318.1190088122, 
                                13556.2564363664, 15383, NA, NA, NA, NA, 10066.1275878533, 11722.9525409595, 
                                14235, NA, NA, NA, NA, NA, 10184.6982302455, 12031, NA, NA, NA, 
                                NA, NA, NA, 10256, NA, NA, NA, NA, NA, NA, NA), .Dim = c(8L,8L), class = c("triangle", "matrix"), 
                              .Dimnames = list(origin = c("1","2", "3", "4", "5", "6", "7", "8"), dev = c("1", "2", "3", "4", "5", "6", "7", "8"))))
  
  check2 <- checkEquals(test1, structure(c(950.988037878944, 1273.94538704395, 1529.51029982584, 
                                 1992.55020334767, 2353.92346440271, 2186.71515067255, 2681.95459900876, 
                                 2801, 3349.42137344275, 4411.63719817611, 5592.49369603111, 6795.38888377494, 
                                 7721.79652293179, 6861.93962089091, 9182, NA, 6325.37535605051, 
                                 7808.68804525633, 9581.80619951789, 11093.7626377078, 11809.3988467821, 
                                 11771, NA, NA, 8526.24160310347, 10199.7304678292, 12289.6011268804, 
                                 13817.6698745553, 15278, NA, NA, NA, 9592.21297275467, 11317.5857367693, 
                                 13551.5065851577, 15383, NA, NA, NA, NA, 10066.0955029249, 11722.5465626123, 
                                 14235, NA, NA, NA, NA, NA, 10184.6482377332, 12031, NA, NA, NA, 
                                 NA, NA, NA, 10256, NA, NA, NA, NA, NA, NA, NA), .Dim = c(8L, 8L), class = c("triangle", "matrix"), 
                               .Dimnames = list(origin = c("1", "2", "3", "4", "5", "6", "7", "8"), dev = c("1", "2", "3", "4", "5", "6", "7", "8"))))
  
  return(all(chck1, check2))
}