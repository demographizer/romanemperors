
library("ggplot2")


#Generate Summary Statistics---------------------


stat.desc(emperors1$lifespan, basic = FALSE)
stat.desc(emperors1$reignspan, basic = FALSE)

base <-
ggplot(emperors1, aes(lifespan, reignspan, color = factor(rise)))+
  geom_jitter()
base

labelled <- base +
labs(
  x = "Life-Span of Emperor in Years",
  y = "Duration of Reign by Emperor in Years",
  color = "Rise to Power",
  title = "Life-Span by Reign of Roman Emperors, 25BC-395AD"
)
labelled

styled <- labelled +
  theme_bw()+
  theme(
    plot.title = element_text(face ="bold", size = 12),
    legend.background = element_rect(fill = "white", size = 4, color ="white"),
    axis.ticks = element_line(color ="grey70", size = 0.2),
    
  )
styled
