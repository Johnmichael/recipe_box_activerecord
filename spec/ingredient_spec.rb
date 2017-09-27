require('spec_helper')

describe('Ingredient') do
  describe("#ingredients") do
  it("tells the name of recipe the ingredient belongs to") do
    test_recipe = Recipe.create({:recipe_name => 'Water Soup', :instruction => 'Add water and bring to a lower simmer', :rating => 10, :tag_id =>nil })
    test_ingredient = Ingredient.create({:ingredient => "Dehydrated Water", :recipe_id => test_recipe.id})
    expect(test_ingredient.recipe()).to(eq(test_recipe))
    end
  end
end
