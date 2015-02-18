[num, txt] = xlsread('RaceResults.xlsx');
player_names = txt(3:end,2);

[y, Fs] = audioread('mk64_select.wav');
sound(y, Fs)
choice = menu('Select a player', player_names);
player_selected = player_names{choice};

if choice == 1
    [y, Fs] = audioread('mk64_mario.wav');
    sound(y, Fs)
elseif choice == 2
    [y, Fs] = audioread('mk64_luigi.wav');
    sound(y, Fs)
elseif choice == 3
    [y, Fs] = audioread('mk64_bowser.wav');
    sound(y, Fs)
else
    [y, Fs] = audioread('mk64_yoshi.wav');
    sound(y, Fs)
end
    
fprintf('You selected %s\n', player_names{choice});

lap_times = num(:, 3:end);
winner = player_names{find(sum(lap_times, 2) == min(sum(lap_times, 2)))};

if player_selected == winner
    fprintf('Congratulations, you won!\n')
end
    