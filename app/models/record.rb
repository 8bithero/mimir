class Record < ActiveRecord::Base
  attr_accessible :month, :year

  # ASSOCIATIONS
  #-----------------------------------------------------------------------------------
  has_many :actual_values
  has_many :budget_values
  has_many :revenue_codes, through: :actual_values
end
