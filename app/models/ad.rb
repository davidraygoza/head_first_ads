class Ad < ActiveRecord::Base
  attr_accessible :description, :email, :image_url, :name, :price, :seller_id
end
