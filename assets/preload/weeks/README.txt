Each "weekList-" text file each goes to its specific catagory in-game
(Minus the mods menu, that literally just adds every weekfile it finds)
To add a week to a catagory, simply add a new line with the accomanying week file's name

e.g. (no quotes, that'll break shit, and no need for commas, just newline before each week.)
"tutorial
week1
week2
week3
week4
week5
week6
week7"

to add a catagory, first add it to "FreeplaySelectState.hx" and add the accompanying weeklist file here! (PUNCTUATION, CAPS, AND SPACE SPECIFIC)
For example "Others and Bonus" must be "weekList-Others and Bonus.txt"
TODO: ADD A WAY TO MAKE CATAGORIES MODULAR SIMILAR TO WEEK FILES