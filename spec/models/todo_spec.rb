require 'rails_helper'

# Test suite for the Todo model
RSpec.describe Todo, type: :model do
  it { should have_many(:items).dependent(:destroy) } # ensure Todo model has a 1:m relationship with the Item model
  it { should validate_presence_of(:title) }          # ensure column title is present before saving
  it { should validate_presence_of(:created_by) }     # ensure column created_by is present before saving
end
