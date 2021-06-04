#' Corporate Design: Title Page
#'
#' Example function to generate a title page
#'
#' @param title Document title
#' @param subtitle Document subtitle
#' @param date Document creation date
#' @return Object of class `"knit_asis"` (so that knitr will treat it as is). LaTeX code for title page.
#' @export
#' @examples
#' cd_page_title(
#'   title = "My Title",
#'   subtitle = "My Subtitle"
#' )
cd_page_title <- function(title = default(rmarkdown::metadata$title, "My Report"),
                          programme = default(rmarkdown::metadata$programme, "Data Analytics MSc (ODL)"),
                          subject = default(rmarkdown::metadata$subject, "My Course"),
                          author =default(rmarkdown::metadata$author, "Author's Name"),
                          date = default(rmarkdown::metadata$date, cd_format_date(Sys.Date()))) {

  logo_path <- indiedown_path_tex("res/logo.png")

  indiedown_glue(
    # R >=4, raw strings allow to write LaTeX without escaping \ etc
    r"(
    \begin{titlepage}
    \newcommand{\HRule}{\rule{\linewidth}{0.5mm}} 
    \includegraphics[width=5cm,scale=0.5]{<<logo_path>>}\\[2cm] 
    
    \center 
    
    \textsc{\LARGE University of Glasgow}\\[0.5cm] 
    \textsc{\LARGE School of Mathematics and Statistics}\\[0.5cm] 
    \textsc{\LARGE <<programme>>}\\[0.5cm] 
    
    \vspace*{2cm}
    
    \HRule \\[0.4cm]
    \textsc{\huge \bfseries <<subject>>}\\[0.5cm] 
    { \huge \bfseries <<title>>}\\[0.4cm] 
    { \huge  <<author>>}\\[0.4cm] 
    \HRule \\[1.5cm]
    
    \vspace*{6cm}
  
    {\large <<date>>}\\[2cm] 
   
    \vfill % Fill the rest of the page with whitespace
    \end{titlepage}
    )"
  )
}
