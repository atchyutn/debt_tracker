# frozen_string_literal: true

require 'rails_helper'

# Test suite for User model
RSpec.describe User, type: :model do
  # Association tests
  # ensure User model has 1:m relationship with debts model
  it { should have_many(:debts).dependent(:destroy) }

  # Validation tests
  # ensure columns username, email, password are present before saving
  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password) }
end
