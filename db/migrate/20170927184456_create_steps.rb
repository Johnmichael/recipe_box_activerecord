class CreateSteps < ActiveRecord::Migration[5.1]
  def change
    create_table(:steps) do |t|
      t.column(:instruction, :string)

      t.timestamps()
    end
  end
end
