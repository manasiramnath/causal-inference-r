# potential outcomes causal model

read_data <- function(df)
{
  full_path <- paste("https://github.com/scunning1975/mixtape/raw/master/", 
                     df, sep = "")
  df <- read_dta(full_path)
  return(df)
}

yule <- read_data("yule.dta") |> 
  lm(paup ~ outrelief + old + pop, .)
summary(yule)

df <- read_data("yule.dta")
