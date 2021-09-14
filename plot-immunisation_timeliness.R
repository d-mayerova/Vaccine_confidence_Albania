# Plots for immunisation timeliness in Albania study 

# load libraries
library (data.table)
library (ggplot2)
library (ggpubr)

# clear workspace
rm (list = ls ())

# ------------------------------------------------------------------------------
# Plot - immunisation timeliness
# ------------------------------------------------------------------------------

# read file with plot data
plot_data <- fread ("C:\\Albania\\New multivariable\\immunisation_timeliness.csv")

plot_list <- vector (mode = "list", length = 4)

# loop through plots for immunisation_timeliness
for (i in 1:5) {
  
  plot_dat <- switch (i,
                      # information source characteristics
                      "1" = plot_data [characteristics == "Internet/social media" |
                                         characteristics == "Trusted source - vaccines"],
                      # maternal characteristics
                      "2" = plot_data [characteristics == "Age at birth" | 
                                         characteristics == "Education" | 
                                         characteristics == "Marital status" |
                                         characteristics == "Sex of household head"],
                      # socioeconomic characteristics
                      "3" = plot_data [characteristics == "Household wealth" | 
                                         characteristics == "Religion" |
                                         characteristics == "Ethnicity" |
                                         characteristics == "Mother worked" |
                                         characteristics == "Partner worked" |
                                         characteristics == "Education of partner"], 
                      # child characteristics
                      "4" = plot_data [characteristics == "Gender" | 
                                         characteristics == "Birth order"],
                      # geographic characteristics
                      "5" = plot_data [characteristics == "Area of residence" | 
                                         characteristics == "Prefecture"]
                      )
  
  # plot title
  plot_title <- switch (i, 
                        "1" = "Information source characteristics",
                        "2" = "Maternal characteristics",
                        "3" = "Socioeconomic characteristics", 
                        "4" = "Child characteristics",
                        "5" = "Geographic characteristics"
                        )
  
  # plot
  plot_list [[i]] <- ggplot (data = plot_dat, 
                            aes (x = reorder (specific_characteristics, -order),
                                  y = immunisation_timeliness, 
                                  fill = -immunisation_timeliness)) + 
    geom_bar (stat = "identity", width = 0.75, alpha=0.9) + 
    geom_errorbar (aes (ymin = low_95ci, ymax = high_95ci, width = 0.25), 
                   col = "orange") + 
    labs (x = "",
          y = "Vaccine confidence (%)", 
          title = plot_title
          ) +
    coord_flip () + 
    facet_grid (characteristics ~ ., scales = "free") +
    theme_bw () + 
    theme (legend.position="none") + 
    theme (plot.title = element_text (size = 20)) + 
    theme (axis.text = element_text (size = 10)) + 
    theme (strip.text.y = element_text (size = 8)) + 
    scale_y_continuous (labels = function (x) paste0 (x, "%")) + 
    theme (axis.title.x = element_blank (), 
           axis.title.y = element_blank ()) 
}

# arrange plot columns and rows
p <- ggarrange (plot_list[[1]],plot_list[[4]],plot_list[[2]],plot_list[[3]],plot_list[[5]], ncol = 2, nrow = 3, heights = c(1,2,1))

# print plot
print (p)

# save plot to file
ggsave (filename = "C:\\Albania\\New multivariable\\plot_immunisation_timeliness.jpg", 
        plot = p, 
        units = "in", width = 12, height = 18, 
        dpi = 300)

ggsave (filename = "C:\\Albania\\New multivariable\\plot_immunisation_timeliness.eps", 
        plot = p, 
        units = "in", width = 12, height = 18, 
        device = cairo_ps)
