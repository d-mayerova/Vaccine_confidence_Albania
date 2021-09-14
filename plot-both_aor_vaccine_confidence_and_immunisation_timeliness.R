# Plots for vaccine confidence and immunization timeliness - 10 grahs together 6 blue and 4 orange

# load libraries
library (data.table)
library (ggplot2)
library (ggpubr)


# VACCINA CONFIDENCE - ORANGE
# ------------------------------------------------------------------------------
# Plot - Adjusted odds ratios
## ------------------------------------------------------------------------------
rm (list = ls ())
# read file with plot data
plot_data_vaccine_confidence <- fread ("C:\\Albania\\New multivariable\\data_aor_vaccine_confidence.csv")
plot_list_vaccine_confidence <- vector (mode = "list", length = 2)

# loop through 4 subplots
for (i in 1:4) {
  
  plot_dat_vc <- switch (i, 
                      "1" = plot_data_vaccine_confidence [characteristics == "Internet/social media"], 
                      "2" = plot_data_vaccine_confidence [characteristics == "Marital status"],
                      "3" = plot_data_vaccine_confidence [characteristics == "Ethnicity"],
                      "4" = plot_data_vaccine_confidence [characteristics == "Region"])
                      
                      
  # plot
  plot_list_vaccine_confidence [[i]] <- ggplot (data = plot_dat_vc, 
                             aes (x = reorder (specific_characteristics, -order), 
                                  y = AOR, 
                                  fill = -AOR)) + 
    geom_bar (stat = "identity", width = 0.75, alpha=0.9) + 
    scale_fill_gradient(high="#D59187", low="#A44A43") +
    geom_errorbar (aes (ymin = low_95ci, ymax = high_95ci, width = 0.25), 
                   col = "orange") + 
    coord_flip () + 
    facet_grid (characteristics ~ ., scales = "free") +
    theme_bw () + 
    theme (legend.position="none") + 
    theme (axis.title.x = element_blank (),
           axis.title.y = element_blank ()) +
    theme (strip.text.y = element_text (size = 11))
}

# arrange plot columns and rows

# IMMUNISATION TIMELINESS - BLUE
# ------------------------------------------------------------------------------
# Plot - Adjusted odds ratios
## ------------------------------------------------------------------------------

# read file with plot data
plot_data_immunisation_timeliness <- fread ("C:\\Albania\\New multivariable\\data_aor_immunisation_timeliness.csv")
plot_list_immunisation_timeliness <- vector (mode = "list", length = 2)

# loop through 6 subplots
for (i in 1:6) {
  
  plot_dat <- switch (i, 
                      "1" = plot_data_immunisation_timeliness [characteristics == "Internet/social media"], 
                      "2" = plot_data_immunisation_timeliness [characteristics == "Maternal education"],
                      "3" = plot_data_immunisation_timeliness [characteristics == "Mother worked"],
                      "4" = plot_data_immunisation_timeliness [characteristics == "Partner worked"],
                      "5" = plot_data_immunisation_timeliness [characteristics == "Education of partner"],
                      "6" = plot_data_immunisation_timeliness [characteristics == "Region"])
  
  
  # plot
  plot_list_immunisation_timeliness [[i]] <- ggplot (data = plot_dat, 
                             aes (x = reorder (specific_characteristics, -order), 
                                  y = AOR, 
                                  fill = -AOR)) + 
    geom_bar (stat = "identity", width = 0.75, alpha=0.9) + 
    geom_errorbar (aes (ymin = low_95ci, ymax = high_95ci, width = 0.25), 
                   col = "orange") + 
    coord_flip () + 
    facet_grid (characteristics ~ ., scales = "free") +
    theme_bw () + 
    theme (legend.position="none") + 
    theme (axis.title.x = element_blank (),
           axis.title.y = element_blank ()) +
    theme (strip.text.y = element_text (size = 11))
}

# arrange plot columns and rows
p <- ggarrange (plot_list_immunisation_timeliness[[1]],plot_list_immunisation_timeliness[[2]],plot_list_immunisation_timeliness[[3]],plot_list_immunisation_timeliness[[4]],plot_list_immunisation_timeliness[[5]],plot_list_immunisation_timeliness[[6]],plot_list_vaccine_confidence[[1]],plot_list_vaccine_confidence[[2]],plot_list_vaccine_confidence[[3]],plot_list_vaccine_confidence[[4]], ncol = 2, nrow = 5, heights = c(1,1,1,1,1))

print (p)

# save plot to file
ggsave (filename = "C:\\Albania\\New multivariable\\plot_aor_both_IT_and_VC.jpg", 
        plot = p, 
        units = "in", width = 12, height = 12, 
        dpi = 300)

ggsave (filename = "C:\\Albania\\New multivariable\\plot_aor_both_IT_and_VC.eps", 
        plot = p, 
        units = "in", width = 12, height = 12,
        device = cairo_ps)

