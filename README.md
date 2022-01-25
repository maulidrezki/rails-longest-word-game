
**Specs**
Let’s think about the UI for our game. What do we need?

A page to display the game settings (random letters), with a form for the user to type a word. A button to submit this form.
A page receiving this form, computing the user score and displaying it.

**Routing & Controller**
Using the right command line command, generate the GamesController with two actions new and score. The new action will be used to display a new random grid and a form. The form will be submitted (with POST) to the score action.

**Generating a new game**
Have a look at your old Ruby code. How did you generate an Array of ten random letters? In the new action of the GamesController, create a new @letters instance variable storing these random letters from the alphabet. Then display it in the view.

**Submitting a word**
We need to add a form below the letters so that the user can fill a suggestion and submit it.
Go ahead and add a <form> to your view. It should POST to the /score action in the GamesController.
  
**Computing the score**
Time to implement the GamesController#score logic. Do we have all the information at hand? What do we need? Do we need to pass more information through the POST request? Have a look at hidden_field_tag.

We want to handle three scenarios:
The word can’t be built out of the original grid
The word is valid according to the grid, but is not a valid English word
The word is valid according to the grid and is an English word
