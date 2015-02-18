1. Read the given file (RaceResults.xlsx)
and store the numerical and text data in different
variables `num` and `txt`.

2. From `txt`, extract the names of the players, and store them in
a cell array `player_names`.

3. Play the 'select' audio clip, and  present
the user with a menu, with the prompt 'Select a Player'.
The menu must have a button for each player. Store
the user's choice in a variable `choice`.

4. From the variable `choice`, your program must determine
the character chosen by the user, and store it in a variable
`player_selected`.

5. Based on the user's character, play the corresponding audio clip,
and display the message
'You Selected (character name)!'. 
For example, if the user selects 'Mario',
your program should play Mario's audio clip
and print the message 'You selected Mario'.

6. From `num`, extract the lap times intoa matr
ix named 'lap_times'. In this case,
you can verify that this matrix is sized 4-by-5.

7. Sum the rows of `lap_times`,
and find the minimum of the resulting vector.
Store this value as `minimum_race_time`. Hint: run a help on the
the `sum` function, and find out how to sum rows with it.

8. Get the player name corresponding to the `minimum_race_time`,
and store that name as `winner`.

9. If the user's player won, play the `congrats` audio clip
and display the message
'Congratulations, you completed the race in (minimum_race_time) seconds!'.

10. If the user's player lost, play the `nexttime` audio
clip and display the message 'Better luck next time!'