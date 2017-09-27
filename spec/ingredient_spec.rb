require('spec_helper')

describe('Ingredient') do
  describe("#ingredients") do
  it("tells the name of recipe the ingredient belongs to") do
    test_recipe = Recipe.create({:recipe_name => 'Water Soup', :rating => 10})
    test_ingredient = Ingredient.create({:item => "Dehydrated Water", :amount => "1 cup"})
    test_rjoin = Rjoin.create({:recipe_id => test_recipe.id, :ingredient_id => test_ingredient.id, :tag_id => 1, :step_id => 1})
    expect(test_ingredient.recipes()).to(eq([test_recipe]))
    end
  end
end
