class User < ActiveRecord::Base
  belongs_to :employee
  belongs_to :role
  attr_accessible :password, :state, :username
end
