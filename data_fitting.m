
%% Fitting Linear Data
% Let's say we're doing an experiment in which
% we collect the values of resistance for a piece of equipment
% at different temperatures:

temperature = [10, 20, 30, 40, 50, 60];
resistance = [30.2, 58.5, 91.2, 122.6, 147.6, 188.0];

%%
% Once we have the data, we plot it:

%%
plot(temperature, resistance, '*')
xlabel('Temperature [C]');
ylabel('Resistance [ohm]');
grid
axis([0, 70, 20, 200])

%%
% Looking at the plot, we can assume that a
% _linear_ relationship
% exists between the temperature and resistance.
% This means that we can draw a line such that
% it passes through all the data points (or atleast
% comes very close to doing that).

%%
% The equation of this line is:

%%
% $R = a*T + b$

%%
% Where $a$ and $b$ are some unknown coefficients.

%%
% MATLAB has a |polyfit| function, that lets
% us determine the coefficients $a$ and $b$
% of a line that best fits some given data.

%%
% In our case, our data is in |temperature| and
% |resistance|:

%%
coefficients = polyfit(temperature, resistance, 1);
b = coefficients(1);
a = coefficients(2);

%%
% Now that we have $a$ and $b$, we can make a plot
% of our function $R = a + bT$. To make a plot
% of the function, we'll create a vector |T| such that it
% contains lots of points in the range we are interested in:
% (0-60 degrees Celsius):

%%
T = 0:1:60;

%%
% Then, we'll evaluate the corresponding |R|:
R = a + b*T;

%%
% Now we'll plot that function, and also plot
% the original data over it, so that we can confirm
% that the funcion indeed fits the data:

% plot the function:
plot(T, R, '-')
hold on

% plot the data:
plot(temperature, resistance, 'o')
xlabel('Temperature [C]');
ylabel('Resistance [ohm]');
grid
axis([0, 70, 20, 200])
legend('Linear Fit', 'Experimental Data', 'Location', 'Best')
hold off

%%
% Now you know how to fit a line to some data. But what if
% the data is such that you _can't_ fit a line through it?
% What if the function that best fits the data is something
% other than $ax + b$? In the section below, we'll see
% how to fit some data with another function, of the form
% $ax^b$.

%% Kepler's Third Law
% ... tells us that
% the orbital period of a planet - i.e.,
% the time it takes to complete one revolution around its star,
% is proportional to its distance from that star
% raised to the power 1.5. Elegantly put:

%%
% $T \propto r^{3/2}$

%%
% Where $T$ is the orbital period of the planet, and $r$ is the
% distance to the star.

%%
% We'll verify Kepler's law for the planets of our _own_ solar
% system, using some real data:
%
% http://www.astronomynotes.com/tables/tablesb.htm

%%
% Our approach will be as follows:
%
% 1. Plot the raw data points on MATLAB
%
% 2. Assume that this data can be fit using a power law, of the form
%    $T = ar^b$
%
% 3. Use MATLAB's |polyfit| function to determine the coefficients
%    |a| and |b|
%
% 4. Verify that |b| is 1.5
%
% 5. Plot the resulting function $ar^b$, and verify
%    that the data points fall on this curve.

%%
% First, let's enter and plot the data:

distances = [0.387,0.723, 1.000, 1.524, ...
             5.203, 9.537, 19.191, 30.069, 39.482];
orbital_periods = [87.969/365.0, 224.701/365.0, 1.0, 686.98/365.0, ...
                    11.862, 29.457, 84.011, 164.79, 247.68];
                
plot(distances, orbital_periods, 'o');
grid
axis([0, 45, 0, 300])
xlabel('Distances [AU]')
ylabel('Orbital Periods [years]');


%%
% We'll assume that these points can be fit 
% by a function of the following form:

%%
% $T = ar^b$

%%
% Where $T$ is the orbital period, and $r$ is the distance
% of each planet. We don't know the values for $a$ and
% $b$ in this function; for that, we'll have to do a little
% math, and use |polyfit|.

%%
% Taking $log()$ on both sides of our function, we have:

%%
% $log(T) = log(a) + b*log(r)$

%%
% Now, let's say:

%%
% $log(T) = T_L$
%
% $log(a) = A_L$ and
%
% $log(r) = r_L$
%
% then we have:

%%
% $T_L = A_L + b*R_L$

%%
% This means that $T_L$ are $R_L$ are related _linearly_.
% In fact, if we plot the log of the orbital periods v/s
% the log of the distances, we'll see that they fall in
% a straight line!

%%
plot(log(distances), log(orbital_periods), '-o')
grid
axis([0, 4, 0, 8])
xlabel('log(Distances)')
ylabel('log(Orbital Periods)')

%%
% The coefficients that describe this line are
% $A_L$ and $b$, and we can use |polyfit| to determine
% them:

%%
coefficients = polyfit(log(distances), log(orbital_periods), 1);
b = coefficients(1);
A_L = coefficients(2);

%%
% But for our function, we need $a$, not $A_L$.
% Since $A_L$ is just $log(a)$, we can get $a$ as:

%%
a = exp(A_L);

%%
% Now we have both the parameters for our function
% $T = ar^b$. Let's plot this function:

%%
r = 1:0.1:40;
T = a*(r.^b);

%%
plot(distances, orbital_periods, 'o')
hold on
plot(r, T, '-');
grid
axis([0, 45, 0, 300])
legend('Actual data', 'Fitted function', 'Location', 'Best')
hold off

%%
% So our function fits the data quite well. Further,
% let's have a look at its coefficients:

%%
disp(a)
disp(b)

%%
% Which means, that the fitting function, is roughly:

%%
% $T = 1.006 r^{1.499}$

%%
% So, we're able to confirm, as Kepler theorized more than 400 years ago,
% that the orbital period of a planet is indeed proportional to
% its distance from the star raised to 1.5. Science is awesome.

%%
% And here's a bad picture I took of Jupiter through my telescope!

%%
% <html>
% <img src=http://i.imgur.com/Lf4OydX.jpg width=250px>
% </html>