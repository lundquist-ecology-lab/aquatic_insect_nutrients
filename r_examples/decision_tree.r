## Example of using a decision tree to identify stream type based on
## predator biomass using decision trees.
## (Spoilers, it is not a great predictor)

library(rpart)
library(rpart.plot)
library(caTools)

source("biomass.r")
set.seed(4932)

predator <- predator[c(-2, -3, -5)]

# Split into test and train datasets
split <- sample.split(predator$type, SplitRatio = 0.75)
train <- subset(predator, split == TRUE)
test <- subset(predator, split == FALSE)

# Trees
decision_tree <- rpart(type ~ ., data = train, method = "class")

# Plot
rpart.plot(decision_tree)

# Make predictions
predictions <- predict(decision_tree, test[-3], type = "class")

# Check accuracy
accuracy <- mean(predictions == test$type)
print(paste("Accuracy:", accuracy))
