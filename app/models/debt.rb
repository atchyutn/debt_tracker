class Debt < ApplicationRecord
  # Model Associations
  belongs_to :user
  belongs_to :category # TODO add category model 
  belongs_to :payee # TODO add payee model

  # Model Validations
  validates_presence_of :user_id, :category_id, :payee_id, :total_months, :months_left, :original_due, :emi_amount
end
