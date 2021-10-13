class Payment < ApplicationRecord
  self.primary_key = :id
  belongs_to :user
  belongs_to :district
  belongs_to :cart
  belongs_to :status
  has_many :line_item_clones, dependent: :destroy

  validates :user_id, presence: true
  validates :fullname, presence: true
  validates :country, presence: true
  validates :city, presence: true
  validates :district_id, presence: true
  validates :address, presence: true
  validates :phone, presence: true
  validates :cart_id, presence: true
  validates :subtotal, presence: true
  validates :total, presence: true
  validates :status_id, presence: true


  def add_product(image)
    current_item = line_item_clones.find_by(image_id: image.id)

    if current_item
    current_item.increment(:quantity)
    else
      current_item = line_item_clones.build(image_id: image.id, price_cents: image.product.price_cents)
    end
    current_item

  end
  
end
