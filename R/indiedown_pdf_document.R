# indiedown: customize options to rmarkdown::pdf_document() here

#' Customized R Markdown Document
#'
#' `uofgdataanalyticsreport()` is the main function of the uofgdataanalyticsreport package. Use as
#' `output: uofgdataanalyticsreport::uofgdataanalyticsreport` in the R Markdown YAML header.
#'
#' @param ... Passed on to [rmarkdown::pdf_document()].
#' @return R Markdown output format to pass to [rmarkdown::render()].
#' @export
uofgdataanalyticsreport <- function(...) {
  indiedown_pdf_document_with_asset(
    highlight = "pygments",
    latex_engine = "lualatex",
    ...
  )
}
