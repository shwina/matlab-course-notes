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

%% Excel Input and Output

%% 
% Here's the data in the file |RaceResults.xlsx|:

%%
% 
% <html>
% <img src="../mariokart_data_screenshot.png">
% </html>

%%
% We notice that the data is a combination of both
% numbers and text, and we'd like to load this
% data into MATLAB. To do this, we will use the
% |xlsread| function:

[num, txt] = xlsread('RaceResults.xlsx');

%%
% |xlsread| returns two values, |num| and |txt|.
%
% 1. |num| is a *matrix* containing all the numeric data
% 2. |txt| is a *cell array* containing all the text data


%%
% To understand what goes in |num|, look at the spreadsheet,
% and draw the smallest rectangle that holds *all* the numeric
% values:

%%
% 
% <html>
% <img src="../mariokart_data_num.png">
% </html>

%%
% MATLAB will put the values inside this rectangle in the
% matrix |num|. For anything in the rectangle that is
% _not_ numeric data, MATLAB will put |NaN|. Thus, we have
% the following result for |num|:

disp(num)

%%
% To understand what goes in |txt|, look at the spreadsheet,
% and draw the smallest rectangle that holds *all* the text
% data:

%%
% 
% <html>
% <img src="../mariokart_screenshot_txt.png">
% </html>

%%
% MATLAB will put the values inside this rectangle in the
% cell array |txt|. For anything in the rectangle that is
% _not_ text data, MATLAB will put an empty string (|''|).
% Thus, we have the following result for |txt|:

disp(txt)

%%
% Once the data has been read into |num| and |txt|,
% you can pull out values you need from them. For instance,
% let's say we want to store the lap times into a separate matrix,
% we can do:

lap_times = num(:, 3:end)

%%
% And let's say we want to store the player names into
% a separate cell array:

player_names = txt(3:end, 2)

%%
% *Remember, when you access values from a cell array using round
% brackets |()|, the values are returned in a cell array*. Since
% we want |player_names| to be a cell array of strings, we use
% round brackets to access values from |txt|.

%%
% Don't confuse this with using curly brackets |{}| to access
% values from a cell array, which _doesn't_ put the values
% in a new cell array.