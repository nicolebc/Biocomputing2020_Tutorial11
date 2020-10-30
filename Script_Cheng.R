#Create function that uses 'dir' as argument
##Dir is path name ie: "~/Documents/Biocomputing"

directFunc <- function(dir, column){

  listofFiles <- list.files(path= dir)
  vectorofCoeff <- vector()
  #Read data from each file in the directory 
  #Calculate coefficient of variation (std dev/mean) for a user-specified column
 for (i in 1:length(listofFiles)){ 
   file <- listofFiles[i]
   read.table(file = "file", header=TRUE)
   colData <- read.table(file$column)
   stddev <- sd(colData)
   mean <- (colData)
   coeff <- stdev/mean
   
   #Allow user to make 50 obs decision
   
   if(nrow(colData)<50){
     print(paste("The file ",file," has less than 50 observations!"))
      vectorofCoeff <- c(vectorofCoeff,coeff)
   }
   else{
   vectorofCoeff <- c(vectorofCoeff,coeff)
   } 
 }
  
  #Return values as vector
  vectorofCoeff
 }
}