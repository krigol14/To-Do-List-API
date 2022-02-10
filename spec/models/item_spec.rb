require 'rails_helper'

# Test suite for the Item model
RSpec.describe Item, type: :model do
  it { should belong_to(:todo) }            # ensure an item belongs to a single todo record
  it { should validate_presence_of(:name) } # ensure column name is present before saving
end
