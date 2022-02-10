require 'rails_helper'

# Test suite for User model
RSpec.describe User, type: :model do
  # ensure User model has a 1:m relationship with the Todo model
  # each user should be able to manage their own todo lists
  it { should have_many(:todos) }
  # ensure name, email and password_digest are present before save
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
end
