# frozen_string_literal: true

# debt model for the debt and emi details
class Debt < ApplicationRecord
  # Model Associations
  belongs_to :user
  belongs_to :category
  belongs_to :payee

  # Model Validations
  validates_presence_of :user_id, :category_id, :payee_id, :total_months,
                        :months_left, :original_due, :emi_amount
end
