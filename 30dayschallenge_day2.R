library(tidyverse)

Sequoia <- "https://i.pinimg.com/564x/23/8a/cd/238acdd6e1be0e1b0134117828b7da8e.jpg"
Cristo <- "https://i.pinimg.com/564x/e6/56/28/e65628eb42a6e16416cd5497c7bc4f96.jpg"
Shorea <-"https://www.frontiersin.org/files/Articles/462908/ffgc-02-00032-HTML/image_m/ffgc-02-00032-g001.jpg"
Eucalyptus <- "https://designscad.com/wp-content/uploads/2016/11/mountain_eucaliptus_dwg_block_for_autocad_95501.gif"
Big <- "https://m.media-amazon.com/images/I/511itN+kOUL._AC_SL1200_.jpg"

data <- data.frame(
  x = c("Sequoia sempervirens", "Cristo Redentor", "Shorea faguetiana", "Eucalyptus regnans", "Big Ben"), 
  value = c(115.92, 110, 100.8, 100.5, 97),
  symbol = c(paste0("image://", Sequoia),
            paste0("image://", Cristo),
            paste0("image://", Shorea),
            paste0("image://", Eucalyptus),
             paste0("image://", Big))
)

data %>% 
  e_charts(x) %>% 
  e_pictorial(value, symbol) %>% 
  e_theme("westeros") %>% 
  e_legend(FALSE) %>% 
  # Title Alignment
  e_title("Three Tallest Trees (above 100 meters)", left='center', padding=10) %>%
  e_labels(show=TRUE) %>%
  e_x_axis(splitLine=list(show = FALSE)) %>%
  e_y_axis(show=FALSE, min=0,max=200, interval=20, splitLine=list(show = FALSE))

