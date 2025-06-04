# Replication code
# Evaluating the Contract Features and Managerial Practices of Service-contracted Bus Transportation: The Case of the QCity Bus Program
# Prepared by Justine Yuki Ocate
# Updated 04 June 2025

# Setup - packages

install.packages(c("lavaan", 
                   "psych", 
                   "readr", 
                   "dplyr", 
                   "tidyr", 
                   "ggplot2"))
library(lavaan)
library(psych)
library(readr)
library(dplyr)
library(tidyr)
library(ggplot2) 

# Load the data

satisfaction_data <- read.csv("Datasets/passenger_satisfaction_survey_dataset.csv")
# str(satisfaction_data)
# summary(satisfaction_data)

satisfaction_data <- satisfaction_data |>
  rename(Route = route)

contract_data <- read.csv("Datasets/contract_indicators_dataset.csv")
# str(contract_data)
# summary(contract_data)

ridership_data <- read.csv("Datasets/ridership_dataset.csv")
# str(ridership_data)
# summary(ridership_data)

missed_data <- read.csv("Datasets/missed_trips_dataset.csv")
# str(missed_data)
# summary(missed_data)

principal_data <- read.csv("Datasets/principal_interview_dataset.csv")
# str(principal_data)
# summary(principal_data)

# Checking for missing values

##  Summary helper for numeric variables
numeric_summary <- function(df) {
  nums <- sapply(df, is.numeric)
  data.frame(
    Variable = names(df)[nums],
    Mean = sapply(df[, nums, drop = FALSE], mean, na.rm = TRUE),
    SD = sapply(df[, nums, drop = FALSE], sd, na.rm = TRUE),
    Missing = colSums(is.na(df[, nums, drop = FALSE]))
  )
}

#####

# Encoding contract indicators for SEM
contract_data_encoded <- contract_data

# Apply mapping
contract_data_encoded$Value <- dplyr::case_when(
  contract_data$Value == "Yes" ~ 1,
  contract_data$Value == "No" ~ 0,
  
  contract_data$Value == "None" ~ 0,
  contract_data$Value == "Occasional" ~ 1,
  contract_data$Value == "Regular" ~ 2,
  contract_data$Value == "Continuous" ~ 3,
  
  contract_data$Value == "Operator" ~ 1,
  contract_data$Value == "Govt" ~ 2,
  contract_data$Value == "Shared" ~ 3,
  
  TRUE ~ NA_real_
)
