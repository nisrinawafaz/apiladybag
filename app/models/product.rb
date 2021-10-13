class Product < ApplicationRecord
  before_destroy :not_referenced_by_any_line_item
  self.primary_key = :id
  belongs_to :category
  has_many :image
  has_many :line_items
  has_many :line_item_clones

  validates :name, presence: true
  validates :slug, presence: true
  validates :description, presence: true
  validates :model, presence: true
  validates :image, presence: true
  validates :category_id, presence: true
  validates :price_cents, presence: true

    private

    def not_referenced_by_any_line_item
      unless line_items.empty?
        errors.add(:base, "line items present")
        throw :abort
      end 
    end
end
