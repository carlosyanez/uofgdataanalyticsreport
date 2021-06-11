#' Function to generate header and footer (with fancyheader)
#'
#' @param head_left Left Header
#' @param head_right Right Header
#' @param footer_left Left Footer
#' @param footer_center Centre Footer
#' @param footer_right Rigt Footer
#' @return Object of class `"knit_asis"` (so that knitr will treat it as is). LaTeX code for header and footer.
#' @export
cd_header_footer <- function(head_left = NA,
                        head_right= default(rmarkdown::metadata$author, ""),
                        footer_left="",
                        footer_centre="\\thepage",
                        footer_right="",
                        title=default(rmarkdown::metadata$title, ""),
                        subject=default(rmarkdown::metadata$subject, "")
                        ) {
  
     if(is.na(head_left)){
        course_code <- str_extract(subject,'STATS\\d{1,9}')
        if(!is.na(course_code)) subject <- course_code
        head_left <- str_c(subject," - ",title)   
     }
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
  
