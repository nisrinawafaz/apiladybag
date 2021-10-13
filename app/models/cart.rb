class Cart < ApplicationRecord
    has_many :line_items, dependent: :destroy

    def add_product(image)
        current_item = line_items.find_by(image_id: image.id)
    
        if current_item
        current_item.increment(:quantity)
        else
          current_item = line_items.build(image_id: image.id, price_cents: image.product.price_cents)
        end
        current_item

      end

    def total_price
        line_items.to_a.sum { |item| item.total_price}
      end
end
