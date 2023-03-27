data {
    int<lower=0> N;             // Number of trials
    int<lower=0, upper=N> y;    // Number of cases (allergic reactions)
}
parameters {
   real<lower=0, upper=1> p;    // Probability of allergic reactions
}
model {
    p ~ normal(0.2, 0.05);   // Probability of allergic reactions
    y ~ binomial(N, p);     // Binomial likelihood of cases
}
generated quantities {
    int<lower=0, upper=N> y_pred;   // Predicted value
    y_pred = binomial_rng(N, p);
}