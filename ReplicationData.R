# =======================================================
# Evaluating the Contract Features and Managerial Practices
# of Service Contracted Bus Transporation: 
# the Case of the  QCity Bus Program
# -------------------------------------------------------
# Prepared by: Justine Yuki Ocate
# Last Updated: 05 June 2025
# =======================================================

# -------------------------------------------------------
# 1. SETUP: Load and install required packages
# -------------------------------------------------------

install.packages(c("lavaan", "psych", "readr", "dplyr", "tidyr", "ggplot2", "semPlot"))
library(lavaan)
library(psych)
library(readr)
library(dplyr)
library(tidyr)
library(ggplot2)
library(semPlot)

# -------------------------------------------------------
# 2. LOAD DATASETS
# -------------------------------------------------------

satisfaction_data <- read.csv("datasets/passenger_satisfaction_survey_dataset.csv")
contract_data <- read.csv("datasets/contract_indicators_dataset.csv")
ridership_data <- read.csv("datasets/ridership_dataset.csv")

ridership_2024 <- ridership_data %>%
  filter(Year == 2023) %>%
  group_by(route)

missed_data <- read.csv("datasets/missed_trips_dataset.csv")

missed_data <- missed_data %>%
  group_by(route) %>%
  summarise(Compliance_Rate = mean(Compliance_Rate, na.rm = TRUE))

principal_data <- read.csv("datasets/principal_interview_dataset.csv")



# -------------------------------------------------------
# 3. DATA ENCODING AND MERGING
# -------------------------------------------------------

# Encode contract indicators
contract_data_encoded <- contract_data
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

# Merge data for SEM (assumes a key column like Route or similar exists)
merged_data <- satisfaction_data |>
  left_join(ridership_2024, by = "route") |>
  left_join(missed_data, by = "route")

# -------------------------------------------------------
# 4. PREPARE VARIABLES FOR SEM
# -------------------------------------------------------

# List of Likert-type variables (ordinal)
likert_vars <- c(
  "arrival_punctuality_sat", "bus_frequency_sat", "driver_behavior_sat",
  "bus_cleanliness_sat", "ride_comfort_sat", "info_access_sat",
  "route_convenience_sat", "boarding_ease_sat", "in_bus_movement_sat",
  "on_time_arrival_sat", "safety_in_bus_sat", "safety_at_stop_sat",
  "seat_comfort_sat", "temperature_comfort_sat", "bus_sufficiency_sat"
)

# Convert to ordered factors
merged_data[likert_vars] <- lapply(merged_data[likert_vars], function(x) {
  factor(x, levels = 1:5, ordered = TRUE)
})

# Scale continuous variables
merged_data$Ridership <- scale(merged_data$Ridership)
merged_data$Compliance_Rate <- scale(merged_data$Compliance_Rate)

# -------------------------------------------------------
# 5. DEFINE SEM MODEL (measurement + structural)
# -------------------------------------------------------

sem_model <- '

  # Measurement model
  Monitoring =~ arrival_punctuality_sat + bus_frequency_sat + Ridership
  Compliance =~ driver_behavior_sat + bus_cleanliness_sat + ride_comfort_sat + Compliance_Rate
  InfoAsymmetry =~ info_access_sat + route_convenience_sat

  Efficiency =~ boarding_ease_sat + in_bus_movement_sat + route_convenience_sat +
                bus_frequency_sat + arrival_punctuality_sat + on_time_arrival_sat
  Effectiveness =~ driver_behavior_sat + safety_in_bus_sat + safety_at_stop_sat +
                   seat_comfort_sat + bus_cleanliness_sat + temperature_comfort_sat + ride_comfort_sat
  Sustainability =~ bus_sufficiency_sat + info_access_sat

  # Structural model
  Efficiency ~ Monitoring + Compliance + InfoAsymmetry
  Effectiveness ~ Monitoring + Compliance + InfoAsymmetry
  Sustainability ~ Monitoring + Compliance + InfoAsymmetry
'

# -------------------------------------------------------
# 6. FIT THE SEM MODEL
# -------------------------------------------------------

fit <- sem(sem_model,
           data = merged_data,
           estimator = "WLSMV")

# -------------------------------------------------------
# 7. OUTPUT AND VISUALIZATION
# -------------------------------------------------------

summary(fit, fit.measures = TRUE, standardized = TRUE)

# Modification indices (optional for model improvement)
modindices(fit, sort. = TRUE, minimum.value = 10)

# Visualize model (left to right layout)
semPaths(fit, what = "std", whatLabels = "std", layout = "tree",
         edge.label.cex = 0.6, 
         label.cex = 0.8,
         rotation = 2, 
         sizeMan = 4, 
         sizeLat = 6,
         mar = c(2, 2, 2, 2),
         width = 16, height = 10,
         posCol = "darkblue", # Darker blue for positive
         negCol = "red4",     # Darker red for negative
         fade = FALSE
         )

