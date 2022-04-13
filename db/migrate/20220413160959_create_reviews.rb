class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :star_rating
      t.string :comments
      t.integer :user_id
      t.integer :product_id
    end
  end
end
