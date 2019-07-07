# frozen_string_literal: true

require 'rails_helper'

# Debt model test suite
RSpec.describe Debt, type: :model do
  # Association specs
  it { should belong_to(:user) }
  it { should belong_to(:category) }
  it { should belong_to(:payee) }

  # Validation specs
  it { should validate_presence_of(:user_id) }
  it { should validate_presence_of(:category_id) }
  it { should validate_presence_of(:payee_id) }
  it { should validate_presence_of(:total_months) }
  it { should validate_presence_of(:months_left) }
  it { should validate_presence_of(:original_due) }
  it { should validate_presence_of(:emi_amount) }
end
