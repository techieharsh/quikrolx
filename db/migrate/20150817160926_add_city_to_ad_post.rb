class AddCityToAdPost < ActiveRecord::Migration
  def change
  	add_column :ad_posts, :city_id, :integer
  end
end
