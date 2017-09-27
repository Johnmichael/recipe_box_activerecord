ENV['RACK_ENV'] = 'test'

require("bundler/setup")
Bundler.require(:default, :test)
set(:root, Dir.pwd())

require('capybara/rspec')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)
require('./app')

Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each { |file| require file }

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
