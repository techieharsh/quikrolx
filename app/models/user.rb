class User < ActiveRecord::Base
  attr_accessible :email, :name, :phone
  
  validates :name, presence: true

  has_many :ad_post, dependent: :destroy

  
end
