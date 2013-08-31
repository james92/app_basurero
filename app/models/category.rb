class Category < ActiveRecord::Base
	has_many :subcategories
  attr_accessible :description, :name
end
