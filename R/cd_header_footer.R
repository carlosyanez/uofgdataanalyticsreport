#' Function to generate header and footer (with fancyheader)
#'
#' @param head_left Left Header
#' @param head_right Right Header
#' @param footer_left Left Footer
#' @param footer_center Centre Footer
#' @param footer_right Rigt Footer
#' @return Object of class `"knit_asis"` (so that knitr will treat it as is). LaTeX code for header and footer.
#' @export
cd_header_footer <- function(head_left = default(rmarkdown::metadata$subject, ""),
                        head_right= default(rmarkdown::metadata$title, ""),
                        footer_left="",
                        footer_centre="\\thepage",
                        footer_right="") {
    indiedown_glue(
      r"(
      \fancyhead[L]{<<head_left>>} 
      \fancyhead[R]{<<head_right>>} 
      \fancyfoot[L]{<<footer_left>>} 
      \fancyfoot[C]{<<footer_centre>>}
      \fancyfoot[R]{<<footer_right>>}
      )"
    )
  }
  
