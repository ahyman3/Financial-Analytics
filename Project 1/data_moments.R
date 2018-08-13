data_moments <- function(data) {
  # Need the moments library for skewness and kurtosis
  library(moments)
  #Calculate mean
  mean.r <- mean(data)
  # Calculate standard deviation
  sd.r <- sd(data)
  # Calculate median
  median.r <- median(data)
  # Calculate skewness (shifted lef or right)
  skewness.r <- skewness(data)
  # Calculte the kurtosis (peakedness)
  kurtosis.r <- kurtosis(data)
  # Creating a data frame with all the moments
  result <- data.frame(Mean = mean.r, 'Standard Deviation' = sd.r,
                       Median = median.r, Skewness = skewness.r,
                       Kurtosis = kurtosis.r
  )
  # Returning the data frame
  return(result)
}