
# Dependências dos slides/aula
library(knitr)
library(rmarkdown)
library(xaringan)
library(xaringanthemer)
library(xaringanExtra)
library(RefManageR)
library(ggplot2)
library(fontawesome)

# Opções de chunks
options(htmltools.dir.version = FALSE)
knitr::opts_chunk$set(
  echo       = FALSE,
  warning    = FALSE,
  message    = FALSE,
  fig.retina = 3,
  fig.width  = 10,
  fig.height = 5,
  fig.asp    = 0.4,
  out.width  = "100%",
  fig.align  = "center",
  comment    = "#"
  )

# Cores para gráficos
colors <- c(
  blue       = "#282f6b",
  red        = "#b22200",
  yellow     = "#eace3f",
  green      = "#224f20",
  purple     = "#5f487c",
  orange     = "#b35c1e",
  turquoise  = "#419391",
  green_two  = "#839c56",
  light_blue = "#3b89bc",
  gray       = "#666666"
)

# Tema da apresentação
xaringanthemer::style_mono_light(
  base_color                      = unname(colors["blue"]),
  title_slide_background_image    = params$logo_slides,
  title_slide_background_size     = 12,
  title_slide_background_position = "bottom 10px right 20px",
  title_slide_background_color    = "white",
  title_slide_text_color          = unname(colors["blue"]),
  footnote_position_bottom        = "1px"
  )

# Opções extras do tema
xaringanExtra::use_scribble(pen_color = unname(colors["blue"]))
xaringanExtra::use_search(
  position  = "bottom-left",
  show_icon = TRUE
  )
xaringanExtra::use_clipboard(
  button_text  = "Copiar",
  success_text = "Copiado!",
  error_text   = "Pressione Ctrl+C para copiar"
  )
xaringanExtra::use_progress_bar(
  color    = colors["blue"],
  location = "bottom"
  )
xaringanExtra::use_extra_styles(
  hover_code_line         = TRUE,
  mute_unhighlighted_code = FALSE
  )
xaringanExtra::use_panelset()
