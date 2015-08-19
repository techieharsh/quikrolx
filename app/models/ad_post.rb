class AdPost < ActiveRecord::Base
  attr_accessible :description, :price, :title, :category_id, :city_id, :user_id

  validates :name, presence: true

  belongs_to :category

  belongs_to :city

  belongs_to :user
  
  accepts_nested_attributes_for :user
  
  
end
