# Plot the richness data from richness.r

source("r_examples/biomass.r")

# Means and standard errors
library(Rmisc)
summary_stats <- summarySE(data = predator, measurevar = "biomass",
                           groupvars = c("stream", "type"), na.rm = TRUE)

# Plot with error bars
library(ggplot2)

# Get proper heights and placements for error bars
ht <- summary_stats$biomass

# Error bar dodge
pd <- position_dodge(.9)

# Order sites numerically, not alphabetically
summary_stats$stream <- factor(summary_stats$stream,
                            levels = c("CC",
                                      "FH",
                                      "LC",
                                      "PC",
                                      "PT",
                                      "LS",
                                      "TB"))
summary_stats$type <- factor(summary_stats$type,
                                levels = c("rural",
                                          "urban",
                                          "ref_up",
                                          "ref_down"))


## Barplot with ggplot2
x <- ggplot(summary_stats, aes(x = stream, y = biomass, fill = type)) +
    geom_bar(stat = "identity", colour = "black", size = 0.3,
            position = "dodge") +
    scale_fill_manual(values = c("#69b3a2", "#b37d69", "#a269b3", "#b3697a")) +
    geom_errorbar(aes(ymin = biomass - se, ymax = biomass + se),
        colour = "black", width = .1, position = pd) +
    xlab("Stream site") +
    ylab(expression(Biomass ~ individual^-1)) +
    scale_y_continuous(limits = c(0, 70),
                     expand = c(0, 0), # Set y range
                     breaks = 0:100 * 10) +
    theme_bw(base_size = 25) +
    theme(panel.grid = element_blank()) +
    theme(legend.position = "none")

png("predator_biomass.png")
x
dev.off()
