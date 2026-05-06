source("R/domain_review.R")

item <- list(signal=41, slack=28, drag=16, confidence=81)
stopifnot(domain_review_score(item) == 143)
stopifnot(domain_review_lane(item) == "ship")
