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

%% Accepting User Input
% In this document, we'll learn
% how to write programs that accept user
% input.


%%
% The |input| function is used to assign
% a user-provided value to a variable:
%
%  lap_time = input('Enter lap time: ');
%  disp(lap_time)
%
% Try entering:
%
% * A number
% * A string
% * Nothing
%
% In the above command, 'Enter lap time: ' is
% a _prompt_. When the command is exectuted,
% this prompt is presented to the user. The
% user is expected to enter a value, and hit
% the Enter key. When that happens, MATLAB will
% try to assign that value to the variable |lap_time|.

%%
% If we're expecting the user to enter a
% _string_, it's useful to provide an additional
% input to |input|:
%
%  player_name = input('Enter player name: ', 's')
%  disp(player_name)
%
% Try entering:
%
% * A name, i.e., a string
% * A number
% * Nothing


%%
% We can even have MATLAB pop up a dialog box,
% instead of prompting on the command window:
%
%  answer = inputdlg('Enter lap time: ');
%  disp(answer)
%
% Notice from the workspace that |answer| is
% a _1x1 cell_. We can't, for instance, do
% math with it:
%
%  3*answer
%

%% Digression: Cell Arrays
% Cell arrays, like vectors and matrices, can
% be used to store a _collection_ of values:

a = {1.0, 2.45, 'hello'};

%%
% The difference is that cell arrays offer
% a simple way to store different _kinds_ of
% values in a single container:

b = {1.0, 2.45, [1,2,3], 'hello'};

%%
% Above, the cell array |b| stores
% two numbers, a vector _and_ a string.

%%
% Elements of cell arrays are accessed using
% curly braces:

a{1}

%%
a{3}


%%
% OK, let's go back to our dialog box:
%
%  answer = inputdlg('Enter lap time: ');
%
% |answer| is now a cell array with 1 element, or value.
%
%  lap_time = answer{1}

%%
% We can even create a dialog box with _multiple_
% entry boxes. To do that, we need to input
% several prompts in a cell array:

%  prompts = {'Enter player name: ', 'Enter lap time: '};
%  answers = inputdlg(prompts);

%%
% Finally, there's a gotcha to using |inputdlg|.
% Each of the elements in |ans| is actually a
% string. For instance:
%
%  lap_times = answers{2}
%  disp(lap_times)
%  disp(lap_times + 1)
%  disp(class(lap_times))
%
% You get odd answers if you try to do math
% between character strings and numbers.
%
% The solution is to use the |str2num| function
% to convert the character string to a number:
%
%  lap_times = str2num(answers{2})
%  disp(lap_times)
%  disp(lap_times + 1)
%  disp(class(lap_times))

%% Using Menu
% Finally, you can present the user with
% a _menu_ using the |menu| function:
%
%  players = {'Mario', 'Luigi', 'Bowser', 'Yoshi'};
%  choice = menu('Select a player!', players)
%  disp(choice)
%  disp(players{choice})
