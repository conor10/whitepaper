clf;

# Parameteres
startYear = 2018; # Begin of time interval
endYear = 50; # Length of time interval
inf = 0.1; # Inflation
initialSupply = 1.4*10.^(6);

# Functions
f_total_tokens = @(x) initialSupply + initialSupply*inf*x;
f_inflation = @(x) initialSupply*inf ./ f_total_tokens(x);

# Plot
t = 0:1:endYear;
ax = plotyy (t + startYear,f_total_tokens(t), t + startYear, f_inflation(t), @plot, @plot);
grid on;
xlabel ('Time in years starting from 2018');
ylabel (ax(1), 'Total Melon Token  Supply');
ylabel (ax(2), 'Melon Token Inflation per year');
title ({'Melon Token Issuance Model'}); 

