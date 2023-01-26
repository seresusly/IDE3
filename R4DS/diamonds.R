ggplot(diamonds, aes(x = carat, y = price)) + 
  geom_hex()
ggsave("R4DS/diamonds.pdf")

write_csv(diamonds, "R4DS/diamonds.csv")