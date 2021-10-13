
module CurrentCart

    private
  
    def set_cart(id)
        
        @cart = Cart.find_by_user_id(id)
        if @cart.blank?
            @cart = Cart.new
            @cart.user_id = id
            @cart.save
        end
        
    end
  end