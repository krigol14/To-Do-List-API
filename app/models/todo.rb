class Todo < ApplicationRecord
    has_many :items, dependent: :destroy       # association with the items model
    validates_presence_of :title, :created_by  # validations
end
