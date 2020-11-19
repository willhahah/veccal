test_that("test error", {
  expect_error(cosine_similarity("abc","edfd"))           # non-vector test
  expect_error(cosine_similarity(c(1, NA, 2), c(0,1,2)))  # NA test
  expect_error(cosine_similarity(c(1, 1, 2, 3, 4), c(0,1,2))) # Vectors of different sizes test
})

test_that("calculation", {
  expect_equal(cosine_similarity(c(1,0),c(1,1)), sqrt(2) / 2)  # cosine π/4
  expect_equal(cosine_similarity(c(0,1),c(1,0)), 0)       # cosine π/2
  expect_equal(cosine_similarity(c(1,sqrt(3)),c(1,0)), 0.5)  # cosine π/3
  expect_equal(cosine_similarity(c(1,2),c(1,2)), 1)       # cosine 0
})
