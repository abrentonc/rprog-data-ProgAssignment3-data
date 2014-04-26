best <- function(state, outcome) {
  
  ## Read outcome data
  data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  statemask <- data$State == state
  namespace <- data$Hospital.Name[statemask]
  outcomes<-c("Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack","Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure","Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia"  )
  outcomespace1 <- c("heart attack","heart failure","pneumonia")
  outcome <- outcomes[outcomespace1 == outcome]
  outcomespace2 <- data[[outcome]][statemask]
  ## Check that state and outcome are valid
  if(!())
  
  ## Return hospital name in that stae with lowest 30-day death rate
  lowr<-min(outcomespace2, na.rm=TRUE)
  sort(namespace[outcomespace2==lowr])
}