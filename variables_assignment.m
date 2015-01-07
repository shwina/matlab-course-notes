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
% In this document, we'll show you how
% use MATLAB to do some elementary math,
% and how _variables_ and _assignment_ work in MATLAB

%% Using MATLAB as a Calculator
%
% MATLAB makes for a really handy calculator! 
% Open up MATLAB, wait for the prompt (>>) to show up,
% and type each one of the following _commands_.
% Check that you get the same output!
%%
4 + 3

%%
2.5*2

%%
17.2/5

%%
2^3

%%
% Apart from the elementary arithmetic operations above,
% MATLAB also supports special mathematical functions:

%%
sin(45)

%%
sin(pi*45/180)

%%
exp(0.5)

%%
log(10)

%%
log10(100)

%%
% You can _compose_ mathematical functions to
% evaluate more complex expressions:
sin(log(0.5))

%% Variables and Assignment
% Consider again the following command:
exp(0.5)

%%
% Instead of just having MATLAB display the result (1.6487)
% on the screen, we can _assign_ the result to a
% _name_:

%%
a = exp(0.5)

%%
% The assignment (|=|) operator _assigns_ the value on
% its right to the name on its left. 
% In our case,
% it _assigned_ whatever |exp(0.5)| was, 
% to the name |a|. |a| now "holds" or
% "points" to the value 1.6487. To inspect
% the value of a variable, use
% |disp| (remember the brackets!):

disp(a)

%%
% We can now use |a| in
% MATLAB commands:

a + 1

%%
a*2

%% 
% We call |a| a _variable_. It's "variable" because
% we can always *assign* it a new value:
a = 4

%%
% Of course, if we now inspect |a| with |disp|, MATLAB should return
% this new value, i.e., |4|
disp(a)

%%
% *So the _assignment_ (|=|) operator
% assigns values to variable names*.
% In MATLAB, variable names can only
% contain letters, numbers, and the
% underscore (|_|) character. Variable
% names can't begin with a number.
%
% These are all valid names for variables:
%
%  b
%  temperature
%  forty_two
%  forty2
%
% While these are invalid (figure out why!)
%
%  so long
%  40two
%  don'tpanic

%%
% MATLAB will complain if we try
% asigning a value to an invalid variable
% name. Try:
%
%  40two = 3.14

%%
% By now, you should be a little annoyed with MATLAB.
% When you type in:
a =  1

%% 
% it echoes the command back at you.
% You can tell MATLAB to suppress the output of
% a command simply by terminating that command with
% a semicolon (|;|). Notice how the following
% commands don't output anything:
%%
a = 1;

%%
a = 5*2;

%%
% Of course, you can have as many
% variables as you like, and use
% them together in commands
%%
a = 1.0;
b = 2.0;
a + b

%%
% You can even assign the result to
% a _new_ variable:
a = 1.0;
b = 2.0;
c = a+b;
disp(c)

%%
% Finally, the same variable can appear
% on _both_ sides of an assignment
% expression:
a = 1;
a = a + 2.0;
disp(a)

%%
% To understand the command
%
%  a = a + 2.0;
%
% remember that the assignment (|=|) operator
% _assigns_ whatever value is on its right
% to the name on its left. In this command,
% it first evaluates 
%
%  a + 2.0
%
% and then _assigns_
% the result to the name |a|.

%% 
% To re-iterate, *the assignment (|=|) operator
% _assigns_ whatever value is on its right
% to the name on its left*. 
% You *cannot* have a
% value on the left and a name on the right, i.e.,
% you can't type:
%
%  a + 2.0 = a;
%
% and expect MATLAB to understand it.
% Remember, computers are DUMB, 
% and they only understand very specific instructions.
