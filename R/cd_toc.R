#' TOC Creator
#' @param depth TOC's depth
#' @param new_page Logical, where to start a new page after end of TOC
#' @return Object of class `"knit_asis"` (so that knitr will treat it as is). LaTeX code for TOC.
#' @export
cd_toc <- function(depth = 2,
                   new_page= TRUE){
  
  if(new_page){newpage <-"\\newpage"
    }else{newpage <-""}

  indiedown_glue(
    # R >=4, raw strings allow to write LaTeX without escaping \ etc
    r"(
    \setcounter{tocdepth}{<<depth>>}
    \tableofcontents 
    <<newpage>>
    )"
  )
 
}