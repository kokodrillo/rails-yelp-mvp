class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :rating
      t.references :restaurant, index: true, foreign_key: true #it means we connected restaurants and reviews
      t.timestamps
    end
  end
end
