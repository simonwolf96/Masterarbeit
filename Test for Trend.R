prox <- c(3830, 2555, 756, 519)
dist <- c(1376, 571, 502, 303)
patients <- c(5793, 3456, 1390, 938)


prop.trend.test(prox, patients)
prop.trend.test(dist, patients)


prop.trend.test(dist, prox)
