# frozen_string_literal: true

require 'rails_helper'

# Category model Test suite
RSpec.describe Category, type: :model do
  # association specs
  # ensure the Category model has 1:m payees through debts
  it { should have_many(:payees).through(:debts) }
  it { should have_many(:debts) }

  # validation specs
  # ensure name column is present before saving
  it { should validate_presence_of(:name) }
end
