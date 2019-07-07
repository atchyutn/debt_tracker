class Category < ApplicationRecord
  # model associations
  has_many :payees, through: :debts
  has_many :debts

  #model validations
  validates_presence_of :name
end
