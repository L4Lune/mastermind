# mastermind

## Classes needed
  * Player
    * Human
    * Computer
      * Start by generating a random 4 digit/color code from 1-6 or Red, Yellow, Purple, Green, Blue, Orange
  * Game
    * Display guess
  * Feedback (could be part of game)
    * Display feedback
  * Number/Colors/Icons could be a module board would load
    * Store the objects that will be displayed as the code colors/numbers and the feedback pegs
  * Code
    * Need to keep this hidden from the rest of the program
    * Set code with the setter method created by attr_writer
    * Compare code


Set Up
1. Computer creates a code (DONE)
2. A player is created from Player class with instance variable @guess (DONE)

Game Loop (12 rounds)
1. The player inputs their guess (DONE)
2. The guess is compared to the code (DONE)
If the guess is incorrect then
3. The guess is then displayed on the board
4. Feedback is then displayed on the board
  4.1 Feedback needs to be displayed with correct nodes (icons) followed by incorrect nodes (icons)
  4.2 Some logic that states if there are two instances of the same color/number that only one feedback item appears 
5. Decrement the rounds counter (DONE)
  If the rounds counter reaches zero:
  5.1 Display a message of you didn't break the code
  5.2 Option to play again is displayed
6. The player inputs another guess (DONE)
If the guess is correct
7. The guess is displayed on the board with a message of you broke the code
8. Option to play again is displayed