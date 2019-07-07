# frozen_string_literal: true

require 'rails_helper'

# Payee model test suite
RSpec.describe Payee, type: :model do
  # model association specs
  # ensure payee model has many categories through debts
  it { have_many(:categories).through(:debts) }
  it { should have_many(:debts) }

  # model validation specs
  # ensure the name column is present before saving the record
  it { should validate_presence_of(:name) }
end
