data {
   int<lower=0> N;
   real heights[N];
}

parameters {
   real mu;
   real<lower=0> sigma;
}

model {
    mu ~ normal(178, 10);
    sigma ~ normal(10, 2);
    heights ~ normal(mu, sigma);
}

generated quantities {
   real height = normal_rng(mu,sigma);
}