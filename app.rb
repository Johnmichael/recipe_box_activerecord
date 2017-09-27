require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get '/' do
  @recipes = Recipe.all()
  @tags = Tag.all()
  erb(:index)
end

get '/create_recipe' do
  @recipes = Recipe.all()
  erb(:create_recipe)
end

post '/create_recipe' do
  recipe_name = params['recipe_name']
  recipe = Recipe.create({:recipe_name => recipe_name, :rating => nil})
  # rjoin = Rjoin.create({:recipe_id => recipe.id, :tag_id => nil, :step_id => nil, :ingredient_id => nil})
  @recipes = Recipe.all()
  redirect("/add_ingredients/#{recipe.id}")
end

get '/add_ingredients/:id' do
  @recipe = Recipe.find(params[:id])
  @ingredients = @recipe.ingredients
  erb(:add_ingredients)
end

post '/add_ingredients/:id' do
  recipe = Recipe.find(params[:id])
  item = params[:item]
  amount = params[:amount]
  ingredient = Ingredient.create({:item => item, :amount => amount})
  Rjoin.create({:recipe_id => recipe.id, :tag_id => nil, :step_id => nil, :ingredient_id => ingredient.id})
  redirect("/add_ingredients/#{recipe.id}")
end

get '/recipe/:id' do
  @recipe = Recipe.find(params[:id])
  @ingredients = @recipe.ingredients()
  @tags = @recipe.tags()
  @steps = @recipe.steps()
  erb(:recipe)
end

get '/add_steps/:id' do
  @recipe = Recipe.find(params[:id])
  @steps = @recipe.steps()
  erb(:add_steps)
end

post '/add_steps/:id' do
  recipe = Recipe.find(params[:id])
  steps = recipe.steps()
  instruction = params[:instruction]
  step = Step.create({:instruction => instruction})
  Rjoin.create({:recipe_id => recipe.id, :tag_id => nil, :step_id => step.id, :ingredient_id => nil})
  redirect("/add_steps/#{recipe.id}")
end

get '/add_tags/:id' do
  @recipe = Recipe.find(params[:id])
  @tags = @recipe.tags()
  erb(:add_tags)
end

post '/add_tags/:id' do
  recipe = Recipe.find(params[:id])
  tags = recipe.tags()
  catagory = params[:catagory]
  tag = Tag.create({:catagory => catagory})
  Rjoin.create({:recipe_id => recipe.id, :tag_id => tag.id, :step_id => nil, :ingredient_id => nil})
  redirect("/add_tags/#{recipe.id}")
end
