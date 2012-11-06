class BudgetValue < ActiveRecord::Base
  attr_accessible :revenue_code_id, :value

  # ASSOCIATIONS
  #-----------------------------------------------------------------------------------
  belongs_to :record
  belongs_to :revenue_code
end
