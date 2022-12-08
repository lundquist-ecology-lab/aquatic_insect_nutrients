[biomass.r](https://github.com/lundquist-ecology-lab/aquatic_insect_nutrients/blob/main/r_examples/biomass.r)
This code reads in a `CSV` file containing data on biomass and individual count for different stream `sites`, `months`, and `years`. The data is grouped by `functional group`, `type`, `stream`, `month`, and `year`. The code calculates the average biomass per individual for each stream site and month and stores the resulting data in a new data frame called "predator". The code also removes any rows with NA values.

To use this code, the user must specify the path to the CSV file containing the data. The user must also make sure that the column names in the CSV file match the column names used in the code. The user can then call the data frame "predator" to access the calculated data.

[plot_biomass.r](https://github.com/lundquist-ecology-lab/aquatic_insect_nutrients/blob/main/r_examples/plot_biomass.r)

This code generates a bar plot using `ggplot2` in R. The plot shows the mean biomass of predators at different stream sites, grouped by the type of land use surrounding each stream site. The code also includes error bars to show the standard error of the mean for each group. The plot is saved as an image file called "predator_biomass.png".