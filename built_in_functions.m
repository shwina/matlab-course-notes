% Copyright 2015, Ashwin Srinath, All Rights Reserved
% LICENSE: MIT (http://opensource.org/licenses/MIT)
% (TL;DR) 
% You can do whatever you want
% with this code
% as long as you include the original copyright
% and license in their original sources.
% I don't guarantee that
% any of this code
% serves any purpose whatsoever.

%% Introduction
% In this document, we'll talk about 
% MATLAB's in-built functions, and how
% and why to use them

%%
% Here are the masses of the planets in our
% Solar System:
planet_masses = [3.3e23, 4.86e24, 5.97e24, 6.41e23, 1.89e27, ...
                5.68e26, 8.68e25];
disp(planet_masses)

%%
% Let's pull out just the mass of Mars:
mars_mass = planet_masses(4);
disp(mars_mass)

%%
% Let's check the length of |planet_masses|:
length(planet_masses)

%%
% Whoops! We missed Neptune and Pluto!
% Let's _append_ those to |planet_masses|:
planet_masses = [planet_masses, 10.2e25, 1.25e22];
disp(planet_masses)

%%
% Let's try to visualize the relative
% masses of the planets:
bar(planet_masses)

%%
% Here's a visualization of the masses
% of just the Gas Giants:
gas_giant_mases = planet_masses(5:8);
bar(gas_giant_mases)

%%
% Remember, when constructing vectors or matrices,
% commas (|,|) append things horizontally,
% and semicolons (|;|) append things vertically.

%% Built-in functions
% In the previous handful of commands,
% we used a lot of MATLAB's in-built 
% _functionality_, like |disp|, |length| and |bar|.
% These are are called MATLAB *functions*, and
% they are invoked, or _called_ with the following
% syntax:
%
%  functionName(input1, input2, ...)
%
% Inputs are also called _parameters_ or _arguments_

%%
% In general, functions can accept more than one input:

zeros(2, 3)

%%
% And we can "catch" what the function returns
% by assigning it to a variable:

zeros_mat = zeros(2, 3);
disp(zeros_mat)

%%
% Some functions can work with variable number
% of inputs:

ones(3)

%%

ones(3,4)

%%
% Function calls can be part of larger expressions:
V = 5*ones(1,3);
disp(V)

%%
% When a function returns more than one thing,
% we can assign each output to a separate variable
% with special syntax like this:
B = randi(10, 5, 4);
[nrows, ncols] = size(B);
disp(nrows)
disp(ncols)

%% Getting help on a function
% To access a function's _documentation_,
% i.e., information on what a functions does,
% and how to use it,
% simply run a |help| on that function like so:

help size

%%
% You can also use the |F1| key to
% _search_ MATLAB's documentation.

%%
% Use |doc| for more extensive documentation:
%  doc size

%% Some more functions (and a little philosophy)

%%
% Here's some more data from another Kart-race. This
% time we have the lap timings for 5 laps for three players:
% |koopa|, |yoshi| and |luigi|:
race_times = [22.1, 21.7, 20.2, 18.2, 16.7; ...
              17.7, 21.2, 24.3, 19.1, 21.1; ...
              26.6, 21.2, 31.4, 18.2, 16.4]; 

%%
% Let's pull out |yoshi|'s lap times:
yoshi_times = race_times(2, :);

%%
% We can sort |yoshi|'s lap times using the sort command:
sort(yoshi_times)

%%
% |sort| can also be used to sort in _descending_ order:
sort(yoshi_times, 'descend')

%%
% How does |sort| work for a matrix?
sort(race_times)

%%
% For a matrix, |sort| sorts every column.
% We can have it sort every row instead:
sort(race_times, 2)

%%
% To find yoshi's fastest lap, we can use
% the |min| function:
min(yoshi_times)

%%
% For a matrix, |min| computes the minimum
% of each column:
min(race_times)

%%
% To get the minimum for each row, the
% syntax is a bit more involved, but it's
% clear from the |help| documentation on |min|:
min(race_times, [], 2)

%%
% To get the minimum of the entire matrix,
% we could do:
min(min(race_times))

%%
% Or alternatively:
min(race_times(:))

%%
% |sum| also sums columns by default:
sum(race_times)

%%
% To sum rows:
sum(race_times, 2)

%%
% Finally, a nice way to *visualize* a matrix
% is to represent each number by a color:
imagesc(race_times)

%%
% Red indicates higher values, while
% blue indicates lower ones

%%
% So functions let you do neat stuff with
% data, without having you worry about
% the details, i.e., how the function is
% _implemented_.
% If you'll notice, the |help| on a function
% in MATLAB tells you _what_ the function
% does and how to _use_ it. But it doesn't
% specify _how_ the function does what
% it does.
%
% This idea of "hiding information" is
% one of the most essential in programming.
% A later version of MATLAB, for instance,
% might use a faster |sort| algorithm, but
% it won't change how you use |sort|
% in your programs. This is what makes
% functions so great---you can use them
% without having to think about how they
% are implemented.
%
% This is one reason you should always prefer
% MATLAB's *built-in* functions over your
% own implementations - you don't have to
% worry about the details because someone
% else has already done that for you.