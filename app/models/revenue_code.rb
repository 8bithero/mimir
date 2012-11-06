class RevenueCode < ActiveRecord::Base
  attr_accessible :value, :name

  # ASSOCIATIONS
  #-----------------------------------------------------------------------------------
  has_many :actual_values
  has_many :budget_values
end
