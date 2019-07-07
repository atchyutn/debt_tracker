# frozen_string_literal: true

# payee model for the recipent details
class Payee < ApplicationRecord
  # model associations
  has_many :categories, through: :debts
  has_many :debts

  # model validations
  validates_presence_of :name
end
