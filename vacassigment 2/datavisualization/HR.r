# Importing Dataset
HR <- read.csv("HR.csv", stringsAsFactors = FALSE)

# Viewing Dataset
View(HR)

# Datatypes Check
str(HR)

# Datatype Conversion
HR$Sex <- as.factor(HR$Sex)
HR$MaritalDesc <- as.factor(HR$MaritalDesc)
HR$CitizenDesc <- as.factor(HR$CitizenDesc)
HR$PerformanceScore <- as.factor(HR$PerformanceScore)

# Datatypes Recheck
str(HR)

# Express Table for people CitizenDesc
prop.table(table(HR$CitizenDesc))

# Importing Library
library(ggplot2)


# Employee citizenship graph
ggplot(HR, aes(x = CitizenDesc)) + theme_classic() + 
  geom_bar() + 
  labs(y = "no of employee", title = "citizenship Count")


# Gender wise citizenship Plot
ggplot(HR, aes(x = Sex, fill = CitizenDesc)) + theme_light() + 
  geom_bar() + 
  labs(y = "employee count", 
       title = "HR citizenship Count by gender")


# Plot for employee citizenship and maritial desc
ggplot(HR, aes(x = MaritalDesc, fill = CitizenDesc)) + theme_light() + 
  geom_bar() + 
  labs(y = "employee count", 
       title = " Plot for employee citizenship and maritial desc")


# Plot for employee citizen desc based on sex and maritial stats
ggplot(HR, aes(x = Sex, fill = CitizenDesc)) + theme_light() + 
  facet_grid(~MaritalDesc) + geom_bar() + 
  labs(y = "Employee count", 
       title = "Plot for employee citizen desc based on sex and maritial stats")


# Pie chart for maritial stats by citizen desc
ggplot(HR, aes(x = "", fill = CitizenDesc)) + 
  geom_bar(position = "fill") + 
  facet_grid(~MaritalDesc) + coord_polar(theta = "y")

# Box Plot for EmploymentStatus based on citizendesc
ggplot(HR, aes(x = CitizenDesc, y = EmploymentStatus)) + theme_bw() + 
  geom_boxplot() + 
  labs(y = "EmploymentStatus", x = "CitizenDesc", 
       title = "Box Plot for EmploymentStatus based on citizendesc")


# Density plot
ggplot(HR, aes(x = EmploymentStatus, fill = CitizenDesc)) + theme_bw() + 
  facet_wrap(Sex~MaritalDesc) + geom_density(alpha = 0.5) + 
  labs(y = "EmploymentStatus", x = "CitizenDesc", 
       title = "HR density plot")
