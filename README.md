#  Hang-up
## System requirements:
- Ruby 2.6.3

Project is a popular console game 'hang-up'. The essence of the game is the
player guessing a random word by letter.
Algoritm:
1. Upload sample word from file (/data/words.txt)
2. Start state: all letter of word (1) closed , hang-up is empty.
3. Player enters a letter
4. If letter icluded in word (1), than this letter opened. Else - the hang-up
is filled with the following position
5. Player wins there is a guessed word
6. Player lost if he made 7 mistakes

Note. Taken into account in the game: ё/е, й/и

##### Run program
```sh
ruby main.rb
```
#####  Add new word
List of used words `/data/words.txt`.
There you can edit it (delete / add / correct words)
