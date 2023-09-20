# Chess Game Documentation

This is a simple chess game developed in Fortran intended to be played between two users via a shared folder system. The game doesn't enforce move's legality, and it doesn't control chess turn rules either. It simply facilitates a way to move chess pieces around the board.


## Table of Contents

- [Compilation](#compilation)
- [Execution](#execution)
- [How To Play](#how-to-play)
- [Game Commands](#game-commands)
- [Game Structure](#game-structure)

## Compilation
To compile the source code (.f file) into an executable program using GNU Fortran, open your terminal environment and navigate to the location of the `ajedrez.f` file. Then type the following command:
```
gfortran ajedrez.f -o ajedrez.exe
```
This will create the executable file (`ajedrez.exe`) in your project directory.

## Execution
To run the program, type the following command in the terminal:
```
./ajedrez.exe
```
## How to Play
The Chess game board will be displayed in the console, with each piece represented by a particular character (refer to the [Game Structure](#game-structure) section for more details).

Here is a summary of the game's flow:

1. The console asks for the coordinates of the piece you want to move. These should be entered as two digits from 1 to 8 for the row and column respectively, with `1 1` representing the top left position (white rook) and `8 8` representing the lower right position (black rook).
2. The console asks for the coordinates of the position to which you want to move the piece. Input should be in the same format as before.
3. The console asks for confirmation of the desired move. If you enter "si", the move is made. If you enter "no", the move process will restart.

This complete operation will be stored in a file in the project directory, which can then be opened and viewed by your opponent using their own program.

## Game Commands
- To refresh the console and check if your opponent has made a move, enter `9 9`.
- To start a new game, enter `1` when prompted by the console. You will then be asked to enter a name for the new game.
- To load an existing game from a saved file, enter `2` when prompted.
- To exit the game, enter `3` in the menu.

## Game Structure
- The game board is represented with a simple 8x8 grid displayed to the console.
- The white pieces are represented by uppercase characters ('T', 'C', 'A', 'R', 'D') for rook, knight, bishop, king, and queen respectively, and 'P' for pawns.
- The black pieces are represented by the same characters in lowercase.
- Each square on the board is either filled with a piece's character or with a '=' or '_' (representing an empty square).
- The black squares on the board are represented by the '=' symbol and white squares are represented by the '_' symbol.

Enjoy your game!