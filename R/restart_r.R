restart_r <- function(test_staging = FALSE,
                       vb = FALSE) {
  if (test_staging) {
    rstudioapi::restartSession(command = "Sys.setenv(DATABRARY_BASE_URL='https://api.stg-databrary.its.nyu.edu')", 
                                 clean = FALSE)
    if (vb) message("Testing staging API.")
  } else {
    rstudioapi::restartSession(command = "Sys.setenv(DATABRARY_BASE_URL='https://api.databrary.org')", 
                                 clean = FALSE)
    if (vb) message("Testing production API.")
  }
}