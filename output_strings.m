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

%% Output with MATLAB
% In this document, we'll learn
% how to output and format _character strings_
% in MATLAB with the |fprintf| function

%% Introduction
%
% So far we've used MATLAB
% to compute with numbers:

a = [1, 22.2, 4.7];
b = [2, 3, 4];
a./b

%%
% But it's also useful to be able
% to manipulate _characters_ or
% _character strings_:

a = 'two'

%%
% _Character strings_ are a sequence
% of zero or more characters:

a = ''

%%

a = 'two riders'

%%

a = '2 rder$'

%%
% It's important to remember that
% strings are just vectors:

a(1)

%%
a(end)

%% Using |fprintf|
% Given a string, the |fprintf| command
% displays it:

fprintf('Two riders were approaching')

%%
line = 'Two riders were approaching';
fprintf(line)

%%
% Sometimes, we have something stored
% in a _variable_, and we'd like to
% display it in a string. |frpintf|
% is useful in this case:

num_riders = 'Two';
fprintf('%s riders were approaching', num_riders)

%%
% In the above command, we're asking |fprintf|
% to display the string |'%s riders were approaching'|.
% But |%s| is a special sequence of characters.
% It isn't printed to the screen itself, but is
% _replaced_ by whatever value is stored in the
% variable |num_riders|.

%%
% In fact, we can have several of these "special sequences".
% Each one will be replaced by the values
% provided to |fprintf|.
num_riders = 'Two';
riders_action = 'doing the Salsa';
fprintf('%s riders were %s', num_riders, riders_action)

%%
num_riders = 'Three';
fprintf('%s riders were approaching', num_riders)

%% Displaying Numeric Data
%
% With numeric data, there are a few more details.
% Integers are easy; use |%d| instead of |%s|

num_riders = 22;
fprintf('%d riders were approaching', num_riders)

%%
% For _floating-point_ numbers:

num_riders = 2.5;
fprintf('%f riders were approaching', num_riders)

%%
% By default, MATLAB prints floating-point numbers
% up to a precision of 6 digits following the
% decimal point. Of course, we have control over
% that:

num_riders = 2.5;
fprintf('%0.2f riders were approaching', num_riders)

%%
% In the sequence |%0.2f|:
% 
% * |0| specifies the _field width_, i.e., the *minimum*
% number of digits to print
% * |2| specifies the _precision_, i.e., the number of digits following the
% decimal point
% * |f|, of course, specifies that the sequence is to be replaced by
% a _floating-point_ value

%%
% Let's vary the field width first:

fprintf('%2.2f riders were approaching', num_riders)

%%

fprintf('%5.2f riders were approaching', num_riders)

%%

fprintf('%10.2f riders were approaching', num_riders)

%%
% MATLAB will simply _pad_ with empty spaces if the
% field width is larger than the number of digits

%%
% Let's now vary the precision:

num_riders = pi;
fprintf('%2.0f riders were approaching', num_riders)

%%
num_riders = pi;
fprintf('%2.2f riders were approaching', num_riders)

%%
num_riders = pi;
fprintf('%2.7f riders were approaching', num_riders)

%%
% So let's say we have the following data:

player = 'mario';
total_time = 49.329;

%%
% And we want to print the string:
%  |'mario completed the race in 49.3 seconds'|

%%
% The appropriate command would be:
fprintf('%s completed the race in %0.1f seconds', player, total_time)


%%
% For numbers in the _scientific notation_, the
% _precision_ specifies the number of significant
% digits to display. And we use |%g| instead
% of |%f|:

Avogado_number = 6.022141e23;

%%
fprintf('0.3g', Avogado_number)

%%
fprintf('0.5g', Avogado_number)

%% Tabs and Newlines
% Special characters are available to 
% insert _tabs_ and _new lines_ (or _line breaks_)
% in strings, using the |\n| character:

lines = 'Two riders were approaching \n The wind began to howl \n';
fprintf(lines)

%%
% We can get rid of that awkward space:
lines = 'Two riders were approaching\nThe wind began to howl\n';
fprintf(lines)

%%
% You can chain many line breaks together:
lines = 'Two riders were approaching\n\n\nThe wind began to howl \n';
fprintf(lines)

%%
% Similarly, the |\t| character inserts _tabs_:
lines = 'Two riders were approaching\tThe wind began to howl \n';
fprintf(lines)

%%
% To wrap up, let's say we had the following data:

player1 = 'mario';
player2 = 'luigi';
player1_lap_time = 20.021;
player2_lap_time = 19.876;

%%
% And we wanted to achieve this output with
% a single command:
%
%  mario lap time:    20.0
%  luigi lap time:    19.8

%%
% We could do:
fprintf('%s lap time:\t%0.1f\n%s lap time:\t%0.1f', ...
        player1, player1_lap_time, player2, player2_lap_time)



