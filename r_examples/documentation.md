[biomass.r](https://github.com/lundquist-ecology-lab/aquatic_insect_nutrients/blob/main/r_examples/biomass.r)

This code first loads in data from a CSV file called `biomass_data.csv`, which contains information about predator biomass in different stream sites.

Next, the code creates several empty vectors (arrays) called `biomass`, `ind`, `stream`, `month`, and `type`. These vectors will be used to store data as the code loops through the stream sites and months in the data.

The code then uses a loop to iterate through the levels (unique values) of the `site` and `month` columns in the data. For each combination of site and month, the code creates a new subset of the data containing only the rows corresponding to that site and month. It then calculates the mean biomass per individual in that subset and stores the result in the `biomass` vector.

Next, the code calculates the total number of individuals in the subset and stores the result in the `ind` vector. It also saves the `month`, land use `type`, and stream `site` in the corresponding vectors.

After the loop is finished, the code creates a new data frame called `predator` using the vectors created above. It then removes any rows with missing data (NA values) and saves the result as the final version of the `predator` data frame.

[plot_biomass.r](https://github.com/lundquist-ecology-lab/aquatic_insect_nutrients/blob/main/r_examples/plot_biomass.r)

This code generates a bar plot using `ggplot2` in R. The plot shows the mean biomass of predators at different stream sites, grouped by the type of land use surrounding each stream site. The code also includes error bars to show the standard error of the mean for each group. The plot is saved as an image file called `predator_biomass.png`.

This documentation written from prompts given to [ChatGPT](https://chat.openai.com/) 
