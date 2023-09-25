# Penalty Shootout Game
This doc provides all the necessary information on how to compile and run the penalty shootout game written in Fortran language. 

The filename is `penalti.f`. The game is a penalty shootout where a player can score a goal against the goalkeeper in ASCII representation.

## Compiling the Code
On a machine with the GNU Fortran Compiler installed. Open a command line terminal and navigate to the directory containing `penalti.f`. 

Compile the code using the following command: 

```bash
gfortran penalti.f -o penalti.exe
```

This will generate an executable file `penalti.exe`.

## Running the game
To start the game, run the following command in the terminal.

```bash
./penalti.exe
```
Upon starting the game, the user will be prompted to input the player's name and jersey number.

## Gameplay
After entering the player's details, an ASCII representation of a soccer field will appear. The player (represented by the player's name and jersey number) will be seen at the bottom, and the goalkeeper along with the goalpost will be positioned at the top.

The player can choose to kick the ball (represented by an asterisk *) to the `left`, `center` or `right` by entering the values `1`, `2` or `3` respectively and then pressing `Enter`.

The goalkeeper will randomly move towards `left`, `right` or stay at the `center`. 

- If the player's shot direction and the goalkeeper's movement direction are different, the player scores a goal!
- If the directions coincide, the goalkeeper stops the goal!

After each penalty attempt, press `Enter` to take another shot.

## Note

The goal post, player, goal keeper, and the ball are represented in ASCII and may not appear perfectly aligned depending on the console settings. 

Enjoy the game and best of luck scoring your penalties!

## Contributing
Thank you for your interest in contributing. Please submit a pull request with any suggested updates. Please make sure to test your changes thoroughly before submission.