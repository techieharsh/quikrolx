class CreateAdPosts < ActiveRecord::Migration
  def change
    create_table :ad_posts do |t|
      t.string :title
      t.text :description
      t.integer :price

      t.timestamps
    end
  end
end
