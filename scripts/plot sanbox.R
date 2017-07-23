library(ggrepel)

end.points.data <- tibble(full.nm = c("Loose Monetary", "Open the floodgates",
                                      "Tight Monetary", "Gold Only",
                                      "Loose Fiscal", "Tight Fiscal"),
                          abr.nm = c("Loose Monetary", "Open the floodgates",
                                     "Tight Monetary", "Gold Only",
                                     "Loose Fiscal", "Tight Fiscal"),
                          pol.fis = c(0, 0, 0, 0, -1, 1),
                          pol.mon = c(1, 0.9, -0.9, -1, 0, 0))


ggplot(econs, aes(x =  pol.fis, y = pol.mon, col = full.nm)) +
  annotate("segment", x = 0, xend = 0, y = 1, yend = -1) +
  annotate("segment", x = 1, xend = -1, y = 0, yend = 0) +
  geom_point(show.legend = F) +
  geom_label_repel(aes(label = full.nm), show.legend = F) +
  ggtitle("Comparing Economists on Fiscal and Monetary Policy") +
  theme(axis.text.x = element_blank(),
        axis.title.x = element_blank(),
        axis.ticks.x = element_blank(),
        axis.text.y = element_blank(),
        axis.title.y = element_blank(),
        axis.ticks.y = element_blank()) +
  annotate("text", x = 0, y = 1.2, label = "Loose Monetary") +
  annotate("text", x = 0, y = 1.1, label = '"Open the floodgates"') +
  annotate("text", x = 0, y = -1.1, label = "Tight Monetary") +
  annotate("text", x = 0, y = -1.2, label = '"Gold Only"') +
  annotate("text", x = -1.1, y = 0, label = "Loose Fiscal", angle = 90) +
  annotate("text", x = 1.1, y = 0, label = "Tight Fiscal", angle = 270) +
  annotate("segment", x = -1, xend = -1, y = 1, yend = -1) +
  annotate("segment", x = 1, xend = 1, y = 1, yend = -1) +
  annotate("segment", x = -1, xend = 1, y = -1, yend = -1) +
  annotate("segment", x = 1, xend = -1, y = 1, yend = 1)
