class Image < ApplicationRecord
  self.primary_key = :id
  belongs_to :product
  has_many :line_items
  has_many :line_item_clones

  validates :uploadedFileUrl, presence: true
  validates :warna, presence: true
  validates :slug, presence: true
  validates :product_id, presence: true
end
