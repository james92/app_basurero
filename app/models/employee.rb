class Employee < ActiveRecord::Base
  belongs_to :job
  belongs_to :country
  has_one :user
  attr_accessible :address, :document, :document_type, :email, :first_name, :country_id,
  								:gender, :last_name, :nit, :state, :job_id, :user_attributes
  accepts_nested_attributes_for :user
end
