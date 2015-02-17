%% Errors and Warnings in MATLAB

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
% Let's say some part of our program
% presents the user with a menu,
% and then prints out that selection to
% the screen. Put the following code in
% a script and run it:

%%
players = {'Mario', 'Luigi', 'Bowser', 'Yoshi'};
choice = menu('Select a player', players);
fprintf('You chose %s\n', players{choice})

%%
% This will work fine if the user makes
% a selection,
% but what if she closes the menu window?
% Run the code above, but this time, close
% the menu window when it appears. You can
% check that the variable |choice| will then be
% zero. In that case,
% the |fprintf| statement will print the
% following error:

%%
%  Subscript indices must either be real positive integers or logicals.

%%
% This is because |players{choice}| is now |players{0}|,
% and that doesn't make any sense.

%%
% When the program is run,
% and it fails, the error message is actually quite cryptic
% and doesn't really do a very good job of explaining
% what exactly is wrong.
% A _much_ more helpful error message, for instance, would
% be
%
%  Nothing was selected from the menu!
%

%%
% In fact, by now, you've probably seen this sort
% of thing in a _lot_ of your programs. When something
% is wrong, MATLAB seemingly prints an entirely 
% irrelevant error message. It's very important to
% understand _why_.

%% Errors
% In the script above, we're not catching
% the problem where it _arises_.
% In this case,
% the problem arises in this line of code:

%%
choice = menu('Select a player', players);

%%
% But MATLAB doesn't realize there's a problem
% till it tries to run this:

%%
fprintf('You chose %s\n', players{choice})

%%
% To make our program handle the situation more
% elegantly, we need to learn how to _raise an error_ in
% the appropriate place.
% The |error| function let's us display an error
% message to the command window,
% and stops the programs execution immediately.
% We can use it as follows:

%%
choice = menu('Select a player', players);
if choice < 1
   error('Nothing was selected from the menu!');
end
fprintf('You chose %s\n', players{choice})

%%
% Now, our program handles the problem much
% more smartly; if there's a error with the
% user input, it catches it in the right place,
% displays a useful error message, and
% stops executing immediately.

%% Warnings
%
% Sometimes, 
% instead of having our programs
% print an error and stop,
% we'd rather have our programs _deal_ with the problem,
% and continue running.
% In these cases, it's probably a good idea to
% let the user know this is happening.
% The |warning| function let's us do this:

%%
players = {'Mario', 'Luigi', 'Bowser', 'Yoshi'};
choice = menu('Select a player', players);
if choice < 1
   warning('Nothing was selected from the menu; choosing default Mario!');
   choice = 1;
end
fprintf('You chose %s\n', players{choice})

%%
% In the code above, in the case
% that the user doesn't make a selection,
% we set |choice| to be 1,
% and print a warning to
% the user that this is happening.
% The rest of the program continues normally.