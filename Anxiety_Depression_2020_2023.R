# get basic packages
install.packages("tidyverse")
library(tidyverse)
# imported datset as Anx_Dep_weekly_2020_2023, removed dirty columns
View(Anx_Dep_weekly_2020_2023)
# create a categorical dataset
Overview_Anx_Dep_2020_2023 <- subset(Anx_Dep_weekly_2020_2023, Group != "By State")
View(Overview_Anx_Dep_2020_2023)
# create a state based datset
States_Anx_Dep_2020_2023 <- subset(Anx_Dep_weekly_2020_2023, Group == "By State")
# create a Year column
States_Anx_Dep_2020_2023$Year <- States_Anx_Dep_2020_2023$`Time Period Start Date`
States_Anx_Dep_2020_2023$Year <- substr(States_Anx_Dep_2020_2023$Year, 0,4)
Overview_Anx_Dep_2020_2023$Year <- Overview_Anx_Dep_2020_2023$`Time Period Start Date`
Overview_Anx_Dep_2020_2023$Year <- substr(Overview_Anx_Dep_2020_2023$Year, 0,4)
# create a Month column
States_Anx_Dep_2020_2023$Start_Month <- States_Anx_Dep_2020_2023$`Time Period Start Date`
States_Anx_Dep_2020_2023$Start_Month <- substr(States_Anx_Dep_2020_2023$Start_Month,6,7)
Overview_Anx_Dep_2020_2023$Start_Month <- Overview_Anx_Dep_2020_2023$`Time Period Start Date`
Overview_Anx_Dep_2020_2023$Start_Month <- substr(Overview_Anx_Dep_2020_2023$Start_Month,6,7)
# make Month column strings instead of numerical
library("dplyr")
install.packages("stringr")
library(stringr)
States_Anx_Dep_2020_2023 <- States_Anx_Dep_2020_2023 %>% 
  mutate(Start_Month = str_replace(as.character(Start_Month),"01", "Jan"))
States_Anx_Dep_2020_2023 <- States_Anx_Dep_2020_2023 %>% 
  mutate(Start_Month = str_replace(as.character(Start_Month),"02", "Feb"))
States_Anx_Dep_2020_2023 <- States_Anx_Dep_2020_2023 %>% 
  mutate(Start_Month = str_replace(as.character(Start_Month),"03", "Mar"))
States_Anx_Dep_2020_2023 <- States_Anx_Dep_2020_2023 %>% 
  mutate(Start_Month = str_replace(as.character(Start_Month),"04", "Apr"))
States_Anx_Dep_2020_2023 <- States_Anx_Dep_2020_2023 %>% 
  mutate(Start_Month = str_replace(as.character(Start_Month),"05", "May"))
States_Anx_Dep_2020_2023 <- States_Anx_Dep_2020_2023 %>% 
  mutate(Start_Month = str_replace(as.character(Start_Month),"06", "Jun"))
States_Anx_Dep_2020_2023 <- States_Anx_Dep_2020_2023 %>% 
  mutate(Start_Month = str_replace(as.character(Start_Month),"07", "Jul"))
States_Anx_Dep_2020_2023 <- States_Anx_Dep_2020_2023 %>% 
  mutate(Start_Month = str_replace(as.character(Start_Month),"08", "Aug"))
States_Anx_Dep_2020_2023 <- States_Anx_Dep_2020_2023 %>% 
  mutate(Start_Month = str_replace(as.character(Start_Month),"09", "Sep"))
States_Anx_Dep_2020_2023 <- States_Anx_Dep_2020_2023 %>% 
  mutate(Start_Month = str_replace(as.character(Start_Month),"10", "Oct"))
States_Anx_Dep_2020_2023 <- States_Anx_Dep_2020_2023 %>% 
  mutate(Start_Month = str_replace(as.character(Start_Month),"11", "Nov"))
States_Anx_Dep_2020_2023 <- States_Anx_Dep_2020_2023 %>% 
  mutate(Start_Month = str_replace(as.character(Start_Month),"12", "Dec"))

Overview_Anx_Dep_2020_2023 <- Overview_Anx_Dep_2020_2023 %>% 
  mutate(Start_Month = str_replace(as.character(Start_Month),"01", "Jan"))
Overview_Anx_Dep_2020_2023 <- Overview_Anx_Dep_2020_2023 %>% 
  mutate(Start_Month = str_replace(as.character(Start_Month),"02", "Feb"))
Overview_Anx_Dep_2020_2023 <- Overview_Anx_Dep_2020_2023 %>% 
  mutate(Start_Month = str_replace(as.character(Start_Month),"03", "Mar"))
Overview_Anx_Dep_2020_2023 <- Overview_Anx_Dep_2020_2023 %>% 
  mutate(Start_Month = str_replace(as.character(Start_Month),"04", "Apr"))
Overview_Anx_Dep_2020_2023 <- Overview_Anx_Dep_2020_2023 %>% 
  mutate(Start_Month = str_replace(as.character(Start_Month),"05", "May"))
Overview_Anx_Dep_2020_2023 <- Overview_Anx_Dep_2020_2023 %>% 
  mutate(Start_Month = str_replace(as.character(Start_Month),"06", "Jun"))
Overview_Anx_Dep_2020_2023 <- Overview_Anx_Dep_2020_2023 %>% 
  mutate(Start_Month = str_replace(as.character(Start_Month),"07", "Jul"))
Overview_Anx_Dep_2020_2023 <- Overview_Anx_Dep_2020_2023 %>% 
  mutate(Start_Month = str_replace(as.character(Start_Month),"08", "Aug"))
Overview_Anx_Dep_2020_2023 <- Overview_Anx_Dep_2020_2023 %>% 
  mutate(Start_Month = str_replace(as.character(Start_Month),"09", "Sep"))
Overview_Anx_Dep_2020_2023 <- Overview_Anx_Dep_2020_2023 %>% 
  mutate(Start_Month = str_replace(as.character(Start_Month),"10", "Oct"))
Overview_Anx_Dep_2020_2023 <- Overview_Anx_Dep_2020_2023 %>% 
  mutate(Start_Month = str_replace(as.character(Start_Month),"11", "Nov"))
Overview_Anx_Dep_2020_2023 <- Overview_Anx_Dep_2020_2023 %>% 
  mutate(Start_Month = str_replace(as.character(Start_Month),"12", "Dec"))
# remove dupes for States dataset
States_Anx_Dep_2020_2023 <- States_Anx_Dep_2020_2023[c(2,4:11)]
# remove State column as it only says United States
Overview_Anx_Dep_2020_2023 <- Overview_Anx_Dep_2020_2023[c(1,3:11)]
# create an order for month
 Sorted_states <- States_Anx_Dep_2020_2023 %>% 
  arrange(match(Start_Month, c("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec")), State)
# test plots 
library("ggplot2")
ggplot(data = States_Anx_Dep_2020_2023) +
  geom_line(mapping = aes(x=Value, y=State, color=Start_Month)) +
  facet_grid(~Year)
# send out csvs
write_csv(States_Anx_Dep_2020_2023, file="Documents/Case Studies/States_Anx_Dep_2020_2023.csv")
write_csv(Overview_Anx_Dep_2020_2023, file="Documents/Case Studies/Overview_Anx_Dep_2020_2023.csv")
# need some averages
avg_trans_2021 <- Overview_Anx_Dep_2020_2023 %>% 
  select(Value, Year, Subgroup) %>% 
  filter(Year == 2021 & Subgroup == "Transgender") %>% 
  summarise(mean = mean(Value, na.rm = TRUE))
avg_trans_2022 <- Overview_Anx_Dep_2020_2023 %>% 
  select(Value, Year, Subgroup) %>% 
  filter(Year == 2022 & Subgroup == "Transgender") %>% 
  summarize(mean = mean(Value, na.rm = TRUE))
avg_trans_2023 <- Overview_Anx_Dep_2020_2023 %>% 
  select(Value, Year, Subgroup) %>% 
  filter(Year == 2023 & Subgroup == "Transgender") %>% 
  summarise(mean = mean(Value, na.rm = TRUE))

avg_cis_2021 <- Overview_Anx_Dep_2020_2023 %>% 
  select(Value, Year, Subgroup) %>% 
  filter(Year == 2021 & Subgroup == "Cis-gender male" | Subgroup == "Cis-gender female") %>% 
  summarise(mean = mean(Value, na.rm = TRUE))
avg_cis_2022 <- Overview_Anx_Dep_2020_2023 %>% 
  select(Value, Year, Subgroup) %>% 
  filter(Year == 2022 & Subgroup == "Cis-gender male" | Subgroup == "Cis-gender female") %>% 
  summarise(mean = mean(Value, na.rm = TRUE))
avg_cis_2023 <- Overview_Anx_Dep_2020_2023 %>% 
  select(Value, Year, Subgroup) %>% 
  filter(Year == 2023 & Subgroup == "Cis-gender male" | Subgroup == "Cis-gender female") %>% 
  summarise(mean = mean(Value, na.rm = TRUE))

avg_lgbt_2021 <- Overview_Anx_Dep_2020_2023 %>% 
  select(Value, Year, Subgroup) %>% 
  filter(Year == 2021 & Subgroup == "Bisexual" | Subgroup == "Gay or lesbian") %>% 
  summarise(mean = mean(Value, na.rm = TRUE))
avg_lgbt_2022 <- Overview_Anx_Dep_2020_2023 %>% 
  select(Value, Year, Subgroup) %>% 
  filter(Year == 2022 & Subgroup == "Bisexual" | Subgroup == "Gay or lesbian") %>% 
  summarise(mean = mean(Value, na.rm = TRUE))
avg_lgbt_2023 <- Overview_Anx_Dep_2020_2023 %>% 
  select(Value, Year, Subgroup) %>% 
  filter(Year == 2023 & Subgroup == "Bisexual" | Subgroup == "Gay or lesbian") %>% 
  summarise(mean = mean(Value, na.rm = TRUE))

avg_straight_2021 <- Overview_Anx_Dep_2020_2023 %>% 
  select(Value, Year, Subgroup) %>% 
  filter(Year == 2021 & Subgroup == "Straight") %>% 
  summarise(mean = mean(Value, na.rm = TRUE))
avg_straight_2022 <- Overview_Anx_Dep_2020_2023 %>% 
  select(Value, Year, Subgroup) %>% 
  filter(Year == 2022 & Subgroup == "Straight") %>% 
  summarize(mean = mean(Value, na.rm = TRUE))
avg_straight_2023 <- Overview_Anx_Dep_2020_2023 %>% 
  select(Value, Year, Subgroup) %>% 
  filter(Year == 2023 & Subgroup == "Straight") %>% 
  summarise(mean = mean(Value, na.rm = TRUE))

avg_disabled_2021 <- Overview_Anx_Dep_2020_2023 %>% 
  select(Value, Year, Subgroup) %>% 
  filter(Year == 2021 & Subgroup == "With disability") %>% 
  summarise(mean = mean(Value, na.rm = TRUE))
avg_disabled_2022 <- Overview_Anx_Dep_2020_2023 %>% 
  select(Value, Year, Subgroup) %>% 
  filter(Year == 2022 & Subgroup == "With disability") %>% 
  summarise(mean = mean(Value, na.rm = TRUE))
avg_disabled_2023 <- Overview_Anx_Dep_2020_2023 %>% 
  select(Value, Year, Subgroup) %>% 
  filter(Year == 2023 & Subgroup == "With disability") %>% 
  summarise(mean = mean(Value, na.rm = TRUE))

avg_abled_2021 <- Overview_Anx_Dep_2020_2023 %>% 
  select(Value, Year, Subgroup) %>% 
  filter(Year == 2021 & Subgroup == "Without disability") %>% 
  summarise(mean = mean(Value, na.rm = TRUE))
avg_abled_2022 <- Overview_Anx_Dep_2020_2023 %>% 
  select(Value, Year, Subgroup) %>% 
  filter(Year == 2022 & Subgroup == "Without disability") %>% 
  summarise(mean = mean(Value, na.rm = TRUE))
avg_abled_2023 <- Overview_Anx_Dep_2020_2023 %>% 
  select(Value, Year, Subgroup) %>% 
  filter(Year == 2023 & Subgroup == "Without disability") %>% 
  summarise(mean = mean(Value, na.rm = TRUE))