%% Getting Stuck

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
% Here's an excerpt from the book 
% _Zen and the Art of Motorcyle Maintenance_:
%
%
% _"A screw sticks on a side cover assembly.
% You check the manual to see if there might be any special cause
% for this screw to come off so hard, but all it says is
% "Remove side cover plate" in that wonderful terse technical style
% that never tells you what you want to know.
% There's no earlier procedure left undone that might cause the cover
% screws to stick._
%
% _"This is the zero moment of consciousness. Stuck.
% No answer. Honked. Kaput. It's a miserable experience emotionally.
% You're losing time. You're incompetent. You don't know what you're doing.
% You should be ashamed of yourself. You should take the machine to a
% real mechanic who knows how to figure these things out._"

%%
% Being _stuck_ is a common scenario in programming. Writing a program
% is easy, writing a program that _works_ is hard. You will almost
% always find that your code has a bug in it. If you're lucky, MATLAB
% will point the bug out and stop trying to run your code.
% If you're unlucky,
% your code will produce an answer, but the answer will be wrong.
% Generally, you "know" when your code is producing the wrong answer.
% In any case, you're _stuck_. And getting _unstuck_
% is embodied in the art of problem solving - part of what makes
% you an engineer and a scientist.

%%
% In this document, we'll learn
% about a few errors you might encounter in MATLAB, and how to
% recognize and fix them.

%% Variable naming
% By far the most common error is
% misspelling a variable:

T_initial = 20.0;
T_increase = 2.0;
T_final = T_Initial + T_increase

%%
% Using the wrong variable is another:
m = 4.5;
C = 4.18;
t = 4.0;
DT = 20.0;
Q = m*c*t

%%
% Avoid these with more descriptive variable
% names, like |time_taken| and |temperature_increase|.

%% Size/dimension errors
% Another common mistake in MATLAB is to
% compute between vectors/matrices of incompatible sizes:

a = [1.0, 2.5, 3.2, 4.8];
b = [2, 2, 2];

a*b

%%
a = [1.0, 2.5, 3.2];
b = [2; 2; 2];

a.*b

%%
% When you run into these errors, be sure to
% check the |size| of the vectors/matrices you are computing with.

%%
size(a)
size(b)

%% Elementwise operations
%
% Remember, for term-by-term multiplication/division,
% you need to use the |.*| and |./| operators:

A = [1, 2, 3; 4, 5, 6];
B = [1, 2, 3; 4, 5, 6];
A*B

%%

A.*B

%%
a = [1, 2, 3];
b = [4, 5, 6];
a*b

%%

a.*b

%%
% Also, if you want to raise each term to a
% power, use |.^|:
A = [1, 2, 3; 4, 5, 6];
A^3

%%
A.^3

%% Invalid access
%
% Accessing values of vectors/matrices
% that do not exist:
A = [1, 2, 3; 4, 5, 6; 7, 8, 9; 10, 11, 12];
A(5,3)

%%
A(3,1:7)

%%
% Again, |size| should give you an idea
% of what you're doing wrong:

size(A)

%% Mixing up syntactical elements
%
% For instance, using square brackets instead of 
% round ones and vice versa:

A = (1, 2, 3; 4, 5, 6)

%%

A = [1, 2, 3; 4, 5, 6]
A[1,1]

%% Order of operations
% Remember that MATLAB doesn't always
% perform calculations in the order
% _you_ want:
P = 10;
V = 20;
R = 10;
T = 20;

P*V/R*T

%%

(P*V)/(RT)

%% Inappropriate use of a function
% 
% Often, you might be using a function
% the wrong way:
choice = menu({'Wario', 'Mario', 'Luigi'});

%%
% In this case, we're missing the first argument
% to |choice|:
choice = menu('Select a player', {'Wario', 'Mario', 'Luigi'});

%%
% Consult the documentation to make sure you're using
% the function appropriately:

help choice

%% Data type problems
%
% Keep track of what the _data type_ of a
% value is:

entry = inputdlg('Enter maximum temperature: ');
disp(entry + 4)

%%
% Since |inputdlg| returns a |cell array|, you can't
% add it to |4|, which is a _number_.

%%
class(entry)

%%
entry = inputdlg('Enter maximum temperature: ');
num = entry{1}; % get the string from the cell array
num = str2num(num); % convert string to number
disp(num + 4)

%% Tips for dealing with an error
% 
% * Embrace the error. Because when you solve the problem
% and get rid of it, you will have learned a valuable lesson.
%
% * Read the error message, identify which line of code
% is behaving badly.
%
% * Open up the command window, and reproduce the error for the
% smallest possible case. Try to deal with the error _outside_
% the context of your problem.
%
% * Use techniques like checking the |size()| of a vector, or
% the |class| of a variable, or using parantheses to control
% the order of operations.
%
% * Consult the documentation on the functions you might be using.
%
% * Check the internet! The programming community is much nicer
% and more helpful than movies/TV will have you believe :)

