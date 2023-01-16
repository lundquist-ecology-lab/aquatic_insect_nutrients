# Read in data
data <- read.csv("../data/biomass_data.csv", header = TRUE,
                stringsAsFactors = TRUE, na.strings = " ")


# Predator biomass per stream per sampling month in 2014
biomass <- NULL
ind <- NULL
stream <- NULL
month <- NULL
year <- NULL
type <- NULL

count <- 1

for (i in levels(data$site)) {
    for (j in levels(data$month)) {
        x <- subset(data, data$site == i &
                        data$month == j &
                        data$functional_group == "predator")
        biomass[count] <- mean(x$per_ind, na.rm = TRUE)
        ind[count] <- sum(x$ind)
        month[count] <- j
        type[count] <- paste(x$type)[1] # Paste only the first
        stream[count] <- paste(x$stream)[1] # Paste only the first
        count <- count + 1
    }
}

# New data frame
predator <- data.frame(biomass, ind, stream, type, month)
names(predator) <- c("biomass", "individuals", "stream", "type", "month")
predator <- na.omit(predator) # Remove NA