class User < ApplicationRecord
  # model associations
  has_many :debts, dependent: :destroy

  # model validations
  validates_presence_of :username, :email, :password
end
