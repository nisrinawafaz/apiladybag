class District < ApplicationRecord
    self.primary_key = :id

    validates :name, presence: true
    validates :price, presence: true
end
