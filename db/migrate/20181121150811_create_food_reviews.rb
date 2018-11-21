class CreateFoodReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :food_reviews do |t|
      t.references :food, foreign_key: true
      t.references :user, foreign_key: true
      t.string :title
      t.text :body
      t.integer :rating

      t.timestamps
    end
  end
end
