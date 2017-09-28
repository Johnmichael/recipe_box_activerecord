User Stories:

User:
  - Add recipe with ingredients and instructions
  - Edit the recipe's ingredients and instructions
  - Delete recipes

  - Tag recipes with categories
  - Update and delete tags

  - Sort recipe by tags
  - Sort recipes by ratings
  - Sort recipes by ingredients


1. Click button to create a recipe
  - Input the name of the recipe
  - Input the ingredients and corresponding amount
    - Dr
  - Begin adding steps
    - 'Add 1/2 cup of sugar'

  - After done with steps, User clicks create, inputs are then put into the database.


- Deleting a recipe should also delete the ingredients and tags at the row of the recipe, this will prevent tags and ingredients from linking to deprecated recipes. If the ingredient or tag is unique to that recipe, then it should delete tag or ingredient at the tag or ingredient table

- Stars are using an ID for selection
A workaround may be a serialized ID at the form, with 3 classes 1, 2-4, and 5, and refactoring the CSS to effect the children of the serialized ID.  
