test_that("read_results PDF works", {
  file <- system.file("extdata", "Texas-Florida-Indiana.pdf", package = "SwimmeR")
  file <- read_results(file)
  expect_match(
    paste(str_extract_all(file[298], "\\d")[[1]], collapse = ""),
    "1215946"
    # "\n    1 Lilly King                                21 Indiana University                         NT               59.46   B"
  )

})

test_that("read_results HTML works", {
  expect_match(
    read_results("http://www.nyhsswim.com/Results/Boys/2008/NYS/Single.htm", node = "pre")[683],
    "\n  1 Ricky Henahan       12 5-WEST IRONDEQUO       50.36      49.76 AAA     24"
  )

})
