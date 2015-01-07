% Copyright 2015, Ashwin Srinath, All Rights Reserved
% LICENSE: MIT
% (TL;DR) 
% You can do whatever you want
% with this code
% as long as you include the original copyright
% and license in their original sources.
% I don't guarantee that
% any of this code
% serves any purpose whatsoever.
%% Introduction
% In this document, we'll learn about Vectors and
% Matrices, the fundamental types of data in MATLAB

%% Vectors
% So far, we have used MATLAB to compute with numbers,
% i.e., _scalars_:

a = 2*5*sin(pi/4);
b = log(a);
disp(b)

%%
% You shouldn't be too impressed with any of this,
% it's nothing we can't do with an ordinary calculator.
% The _true_ power of MATLAB lies in its ability
% to operate on *vectors*. Here's how to create
% a vector:

temp = [14, 21, 27, 32, 37, 37, 34, 27];
disp(temp)

%%
% Vectors are created by putting a list of comma-separated
% values in square brackets.
% In our example, we _assign_ our vector to the name
% |temp| (the rules for vector assignment
% are the same as for scalars).
% We then _inspect_ the value of |temp| using
% |disp|. MATLAB gives us a pretty representation
% of our vector.
%
% Vectors are useful for a lot of different things.
% For instance, they can be used to hold a bunch
% of related values, e.g., readings from an experiment,
% student grades, patient heights, etc.,
% Incidentally, _our_ vector, |temp|, holds Google's
% prediction for the minimum temperature for the
% next eight days (that's why we named it |temp|!)

%%
% We can get the length or "size" of a vector,
% using |length|:
length(temp)

%%
% Having our values in a vector is really useful.
% We can compute the mean temperature:
mean(temp)

%%
% And even the maximum or minimum
max(temp)

%%
min(temp)

%% 
% We can even visualize how the minimum temperature
% will vary:
%%
plot(temp)

%%
% We hope you're convinced that MATLAB is a bit
% more useful than your average calculator!
% But lets move on and learn more about vectors:

%% Accessing Vector Values
%
% As we discussed, we can create vectors by
% putting comma-separated values in square
% brackets:
temp = [14, 21, 27, 32, 37, 37, 34, 27];

%%
% We often want to access specific values of 
% a vector. For instance, let's say we want
% only the temperature on the third day:

temp(3)

%%
% Here, |3| is called an _index_.

%%
% And don't forget, you can assign the
% extracted value to
% a variable:

temp_third = temp(3);
disp(temp_third)

%%
% You can also _change_ the value
% you access. Let's say we made
% a mistake in recording the temperature
% for the third day, to fix it:

temp(3) = 30.0;

%%
% Remember, in commands like this,
% we're not assigning the value
% on the right to a new name, we're
% _modifying_ an existing variable.
% This is also valid (and extremely useful!)
% use of the assignment (|=|) operator.

%%
% We can also get vector values for a 
% _range_ of indices. For this,
% we use the colon (|:|) operator
% For instance, if
% we wanted the temperatures for days
% 2 through 6:

temp(2:6)

%%
% The answer is, of course, a vector.
% It's a "slice" of our original
% vector |temp|.

%%
% The |end| keyword is useful when
% we want to refer to the last index.
% Examine how |end| is used in the
% following commands:

temp(end)

%%
temp(4:end)

%%
% Finally, you can provide a
% _stride_ to the range of indices.
% For instance, if we want
% every second temperature from day 1
% to day 7, we  can do

temp(1:2:7)

%%
% or if we want every _third_ temperature
% from day 1 to day 8:

temp(1:3:8)

%%
% The middle index is a _stride_ or _step_.
% The indices |(1:3:8)| can be read as
% "1 through 8 in steps of 3"

%%
% Strides can be negative also, and
% useful when we want to get values
% "backwards". Here is how to get
% the temperatures from day 6 to
% day 2, backwards:

temp(6:-1:2)

%%
% To compare, here are the "forward" values:

temp(2:6)

%% Sequences
% Here's an example of how we've been
% constructing vectors so far:

v = [1.2, 3.2, 7.6, 8.8];

%%
% Often, we want to _generate a
% sequence_ of numbers. For examaple, if we want
% the sequence 1,2,3,4,...10, we can
% do:

seq = 1:10;
disp(seq)

%%
% Note that this usage of the
% colon (|:|) operator here is different from the
% previous section. Make sure you understand
% this difference before moving on.

%%
% Of course, we don't have to start with |1|:

seq = 2:8;
disp(seq)

%%
% And our sequence can have a stride:

seq = 2:4:20;
disp(seq)

%%
% And, yes, strides can be negative:

seq = 18:-5:-10;
disp(seq)

%%
% We can even generate sequences of
% floating-point ("decimal") numbers:

seq = 0.5:0.2:2.5;
disp(seq)

%%
seq = 1.0:-0.1:0;
disp(seq)

%% Row and Column Vectors
%
% Vectors can be "long" or "tall". So far, we've
% been working with "long" vectors:

yoshi_times = [22.2, 21.7, 23.4, 32.6, 18.0];
disp(yoshi_times)

%%
% We can also create "tall" vectors:

koopa_times = [22.4; 23.6; 24.4; 20.9; 19.0];
disp(koopa_times)

%%
% We can switch between "long" and "tall" vectors
% using the _transpose_ (|'|) operator:

disp(yoshi_times')

%%
% The length of |yoshi_times| and |yoshi_times'|
% is the same:

length(yoshi_times)

%%
length(yoshi_times')

%%
% But they have different _sizes_:

size(yoshi_times)

%%

size(yoshi_times')

%%
% "Long" vectors are called row vectors,
% and "tall" vectors are called column vectors.
% Remember, columns (in architecture), are "tall".
% They are both specific cases of _matrices_, which
% we will study in the following section.


%% Matrices
% So far, we've dealt with _scalars_ (single numbers),
% and _vectors_ (a collection of scalars):
yoshi_times = [22.2, 21.7, 23.4, 32.6, 18.0];
koopa_times = [22.4, 23.6, 24.4, 20.9, 19.0];

%%
% |yoshi_times| and |koopa_times| record the
% lap times of "yoshi" and "koopa" in a
% five-lap race.

%%
% We can "stack" these timings like so:

race_times = [yoshi_times; koopa_times];
disp(race_times)

%%
% What we get is a sort of "table" of numbers.
% The first row is |koopa_times| and
% the second is |yoshi_times|. This "table"
% is called a _matrix_.
% Let's check it's |size|:

size(race_times)

%%
% MATLAB reports the "size" of a matrix
% as [rows, columns]. The first number
% indicates the number of rows, and the second
% indicates the number of columns.

%% Accesing Matrix Values
%
% To experiment with matrices, let's create
% a "magic matrix of 10 rows and 10 columns":
% 
M = magic(10);

%% 
% As with vectors, we often want
% to extract a single value from a matrix.
% We do this by supplying _two_ indices:

M(2, 4)

%%
% The above command selects the value
% sitting on the second row and fourth column
% of our matrix

%%
% We can also extract an entire
% row of values:

M(3, :)

%%
% The index |(3, :)| selects the values
% sitting on the _third_ row, and _all_ columns -
% effectively, the entire row
% 
% What if we only wanted a handful of values
% from the third row?

M(3, 2:6)

%%
% The index |(3, 2:6)| selects the
% values sitting on the third row, and
% columns 2 through 6.

%%
% We can also select _multiple_ rows:

M(1:4, :)

%%
% Or columns:
M(:, 2:7)

%%
% To select a _submatrix_, we provide
% ranges in both dimensions:
M(4:6, 5:7)

%%
% We can also provide strides
% in either dimension:
M(2:2:end, 5)

%%
% Again, we can use the assignment
% operator to _modify_ rows or columns:

M(:, 2:7) = 0.0;
disp(M)

%%
% Let's go back to the data
% from our kart-race:
yoshi_times = [22.2, 21.7, 23.4, 32.6, 18.0];
koopa_times = [22.4, 23.6, 24.4, 20.9, 19.0];
race_times = [yoshi_times; koopa_times]
%%
% 1. Displace race_times with the lap timings as columns (not rows)
% 2. Extract only |yoshi|'s lap times
% 3. Extract both |yoshi| and |koopa|'s lap times for lap 4
% 4. sum(v) sums the element of a *vector*, can you
% figure out who won the race?

%% Generating Matrices
% We've seen that we can create
% matrices by hand:
M = [1, 2, 3; 5, 6.2, 8; 2, 2, 2];

%%
% And we've used |magic| like so:

M = magic(5);

%%
% There are other _functions_ like |magic|
% that we can use to generate matrices.
zeros(5)

%%
ones(6)

%%
ones(3,2)

%%
eye(5)

%%
eye(5) + ones(5)

%%
rand(3,5)

%% Matrix Dimensions
% As we saw, |size(M)| gives
% the number of rows and columns of
% a matrix, i.e., its _dimensions_.
% As with vectors, we can use
% the transpose operator (|'|)
% to flip a matrix's dimensions:

x = rand(2, 5);
disp(x)

%%
disp(x')

%% Arithmetic with Vectors and Matrices

%%
% Vectors and Matrices can be multiplied
% freely with scalars:

M = ones(5);
M = 2*M;
disp(M)

%%
t = 0:0.1:1;
m = -0.2*t;
disp(m)

%%
% To do *elementwise* operations between
% to vectors and matrices, they need to
% be the same shape:

%%
a = [0.6, 0.2, 0.8];
b = [2, 3, 2];
c = a + b;
disp(c)

%%
c = a - b

%%
c = a.*b

%%
c = a.^b

%%
M = ones(3)*2;
B = rand(3);
disp(B)

%%
C = M+B

%%
C = M.*B

%%
% Elementwise multiplication and exponentiation
% are done using the |.*| and |.^| operator
%
% Again, elementwise operations don't work
% for incompatible dimensions/sizes:
%
%  a = [0.6, 0.2, 0.8];
%  b = [1., 2.]
%  a.*b
%
%  a = [0.6, 0.2, 0.8];
%  b = [1., 2., 1.]';
%  a.*b

%%
% Elementwise operations are great for
% evaluating mathematical formulae.
% For instance, here's the formula
% for a damped spring:
%
% $y = e^{-0.2t}sin(t)$
%
% Let's say we wanted to evaluate
% $y$ for $t$ between 0 and 5:

t = 0:0.1:5;
y = exp(-0.2*t).*sin(t);
disp(y)

%%
plot(t, y)

%%
% Finally, and this is a big idea: 
% The "normal" |*| and |^| operators
% (i.e., without a _dot_) are reserved
% for multiplication and exponentiation
% in a _linear algebra_ context.
% You can only multiply a matrix of
% size [M, N] by a matrix sized [N, P]
% (the number of columns of the first
% must equal the number of rows of the
% second). See:
% 
% https://www.youtube.com/watch?v=XZ3HXhvqa8g
%
% to understand Matrix Multiplication

A = [3, 4; 1, 2; 0, 1];
B = [1, 4, 5; 2, 0, 3.];

disp(A*B)

%%
b = [1; 2];
disp(A*b)

