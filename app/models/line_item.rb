class LineItem < ApplicationRecord
  belongs_to :product
  has_many :cart
  belongs_to :image

  def total_price
    product.price_cents.to_i * quantity.to_i
  end

end
