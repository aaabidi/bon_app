class CreateAmenityReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :amenity_reviews do |t|
      t.references :amenity, foreign_key: true
      t.references :user, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
