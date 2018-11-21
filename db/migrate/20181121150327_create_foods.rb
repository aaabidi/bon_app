class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.references :hall, foreign_key: true
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
