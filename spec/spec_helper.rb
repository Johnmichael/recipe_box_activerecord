
ENV['RACK_ENV'] = 'test'

require("rspec")
require("pg")
require("sinatra/activerecord")
require("recipe")
require("tag")
require("ingredient")
require("step")
require("rjoin")
require("pry")


RSpec.configure do |config|
  config.after(:each) do
    Ingredient.all().each() do |ingredient|
      ingredient.destroy()
    end
  end

  config.after(:each) do
    Tag.all().each() do |tag|
      tag.destroy()
    end
  end

  config.after(:each) do
    Recipe.all().each() do |recipe|
      recipe.destroy()
    end
  end

  config.after(:each) do
    Step.all().each() do |step|
      step.destroy()
    end
  end

  config.after(:each) do
    Rjoin.all().each() do |rjoin|
      rjoin.destroy()
    end
  end
end
