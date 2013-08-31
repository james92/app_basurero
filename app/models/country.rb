class Country < ActiveRecord::Base
	has_many :employees
  attr_accessible :name
end
