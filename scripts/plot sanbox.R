

ggplot(econs, aes(x= pol.fis, y = pol.mon, col= as.factor(full.nm))) +
  geom_hline(yintercept = 0, alpha = 0.2) +
  geom_vline(xintercept = 0, alpha = 0.2) +
  geom_point(show.legend = F, size =4 ) +
  geom_text(data = econs, aes(label=full.nm),hjust=-0.2, vjust=0, show.legend = F, size =7) +
  ggtitle("Comparing Economists on Fiscal and Monetary Policy") +
  scale_y_discrete("Monetary Policy", limits = c(-1,1)) +
  scale_x_discrete("Fiscal Policy", limits = c(-1,1)) +
  theme(axis.text.x=element_blank(),
        axis.ticks.x=element_blank(),
        axis.text.y=element_blank(),
        axis.ticks.y=element_blank())

end.points.data <- tibble(lab = c("Both Tight",
                                  "Tight Monetary",
                                  "Both Loose",
                                  "Tight Fiscal"),
                          x= c(1, -1, 1, -1), y = c(1, 1, -1, -1))


ggplot(lab, aes(x= pol.fis, y = pol.mon, col= as.factor(full.nm))) +

  theme(axis.text.x=element_blank(),
        axis.ticks.x=element_blank(),
        axis.text.y=element_blank(),
        axis.ticks.y=element_blank())
