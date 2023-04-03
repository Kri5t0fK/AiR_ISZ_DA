generated quantities {
    real mu = normal_rng(178, 10);
    real sigma = normal_rng(10, 2);
    real height = normal_rng(mu, sigma);

    // uncomment below for prior to be fitted to data
    // real mu = normal_rng(155, 5);
    // real sigma = uniform_rng(0, 5); 
    // real height = normal_rng(mu, sigma);
}