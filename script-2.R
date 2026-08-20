library(tidyverse)

hist_p <- ggplot(diamonds, aes(x = carat)) +
	geom_histogram(
		binwidth = 0.05,
		boundary = 0,
		fill = "darkgray",
		color = "black"
	) +
	scale_y_continuous(
		breaks = seq(0, 6000, by = 2000)
	) +
	coord_cartesian(ylim = c(0, 7000)) +
	labs(
		title = "Histogram of Carat (Weight) among 50,000 Diamonds",
		subtitle = "Carats just at or above meaningful numbers are very common",
		x = "Carat size",
		y = "Number of diamonds",
		caption = "diamonds dataset from ggplot2 package"
	) +
	theme_gray()

ggsave(
	file = "diamonds.png",
	plot = hist_p,
	width = 6,
	height = 4,
	units = "in",
	dpi = 300
)

