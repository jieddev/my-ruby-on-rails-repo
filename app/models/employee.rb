class Employee < ApplicationRecord
  belongs_to :office
  has_one :company, through: :office 
end
