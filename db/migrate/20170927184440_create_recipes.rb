class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table(:recipes) do |t|
      t.column(:recipe_name, :string)
      t.column(:rating, :integer)

      t.timestamps()
    end
  end
end
