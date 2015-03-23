%% Introduction
% Let's say we want to write some code
% that displays a _countdown_:

disp(5)
disp(4)
disp(3)
disp(2)
disp(1)
disp('Blast off!')

%%
% The main problem with this
% approach is that _it doesn't scale_. If
% we wanted a countdown that started at
% 1000, the best we can do is a lot of
% copying, pasting and editing code.

%%
% Here's a better approach, using a
% _while loop_:

n = 5;
while (n > 0)
    disp(n);
    n = n-1;
end
disp('Blast off!')

%%
% Using a _while loop_ has greatly improved
% the quality of our code. It scales easily:

n = 20;
while (n > 0)
    disp(n);
    n = n-1;
end
disp('Blast off!')

%%
% and spares us the time and effort of duplicating
% code.

%%
% Here's the structure of a while loop:
%
%  while (condition)
%      do something
%      do something else
%      do something more
%  end
%
% and here's the flow of execution:
% 
% 1. Evaluate the |condition|, yields either True (1) or False (0)
%
% 2. If the condition is false, exit the while loop and execute the next
%    statement
%
% 3. If the condition is true, execute the loop body, and go back to step
%    1

%% Accepting valid user input
% One of the many applications of the while loop is
% accepting valid input. For example, let's say that 
% the only allowable values for the efficiency of an engine
% lie between |0| and |1|. Here's some code that repeatedly prompts
% the user to enter the efficiency, until
% a valid value is entered:

%%
%  user_input = 2;
%  while (user_input <= 0 || user_input >= 1)
%      user_input = input('Enter the efficiency of the engine: ');
%  end
%  fprintf('You entered efficiency as %0.2f\n', user_input)

%%
% Why do we initialize |user_input| as 2 (an invalid value)?

%% |while| loop with a condition that always evaluates to True

%%
% You can get MATLAB to do something indefinitely,
% by constructing a while loop with a condition
% that always evaluates to true:

%%
%  while 1
%      disp('Are we there yet?')
%  end

%%
% To force MATLAB to stop execution, hit Ctrl+C (Command+(dot) should
% also work on Mac systems).

%%
% While loops with a condition that always
% evaluates to True can also be very useful. Here's
% another approach to repeatedly request user input until
% a valid value is entered:

%%
%  while 1
%      user_input = input('Enter the efficiency of the engine: ')
%      if (user_input >= 0 && user_input <= 1)
%          break
%      end
%  end
%  fprintf('You entered efficiency as %0.2f\n', user_input)

%%
% Here, we use |break| to jump out of the loop
% when some condition is met. This approach is
% useful when we don't know it's time to end a
% loop till we're half way through the body.
%
% Without the conditional and the |break|, our
% program will just keep asking for user input
% and never really exit the loop.
%
% This approach is a little more elegant than
% our previous, because we don't awkwardly
% set |user_input| to some invalid value
% before the loop. In some applications, it's
% not even immediately obvious what values are
% valid and what values are invalid.