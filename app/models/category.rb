class Category < ApplicationRecord
    self.primary_key = :id
    has_many :product

    validates :name, presence: true
    validates :slug, presence: true
    validates :product, presence: true
end
