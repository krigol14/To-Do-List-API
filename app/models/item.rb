class Item < ApplicationRecord
    belongs_to :todo              # model association
    validates_presence_of :name   # validation
end
