class CreateFoodReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :food_reviews do |t|
      t.integer :rating
      t.string :tags
      t.references :food, foreign_key: true
      t.string :reviewer

      t.timestamps
    end
  end
end
