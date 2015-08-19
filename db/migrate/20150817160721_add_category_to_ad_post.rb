class AddCategoryToAdPost < ActiveRecord::Migration
  def change
  	add_column :ad_posts, :category_id, :integer
  end
end
