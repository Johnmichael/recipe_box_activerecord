class CreateRjoins < ActiveRecord::Migration[5.1]
  def change
    create_table(:rjoins) do |t|
      t.column(:recipe_id, :integer)
      t.column(:step_id, :integer)
      t.column(:tag_id, :integer)
      t.column(:ingredient_id, :integer)

      t.timestamps()
    end
  end
end
