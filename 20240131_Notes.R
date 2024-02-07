#Data structures

cats <- data.frame(coat = c("calico","black","tabby"),
                   weights = c(2.1,5.0,3.2),
                   likes_strings = c(1,0,1))

cats

str(cats)

cats$weights + 2


paste("My cat is ",cats$coat)

typeof(cats$weights)
typeof(TRUE)
write.csv(x = cats, file = "cats.csv", row.names = FALSE, quote = FALSE
          )

#What software version do I have?

sessionInfo()

#Matrix

example_mat <- matrix(0,ncol=6, nrow=3)

dim(example_mat)
dim(cats)

# Subsetting 

head(cats)
cats[2]
cats[1:2,2]

#Creat numerical vector
1:10

#Install Package! 


#Download Data
download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/main/episodes/data/gapminder_data.csv", destfile = "gapminder_data.csv")

#Load Data

gapminder_df <- read.csv(file = "gapminder_data.csv")
str(gapminder_df)
dim(gapminder_df)

#Plot the data

ggplot(data = gapminder_df, mapping = aes(x=gdpPercap, y=lifeExp, color = continent)) + geom_point(alpha =0.5) + labs(x = "GDP per capita", y = "Life Expectancy(yrs)") + scale_x_log10() + geom_smooth(method="lm")

#make multiple plots by contient
#to make one line for entire data and keep color just add color = continent as an aes to geom_point
#facet_grid(continent~.)

head(gapminder_df)

ggplot(data = gapminder_df, mapping = aes(x = year, y = lifeExp, group = country, color = continent)) +
  # add line to connect lines
  geom_line() +
  geom_point()

#Make a plot where we modify the shapes and sizes of the points 
ggplot(data = gapminder_df, mapping = aes(x = gdpPercap, y = lifeExp)) +
  geom_point(aes(size=pop,shape = continent,color=continent)) + scale_x_log10() + geom_smooth(method="lm")


