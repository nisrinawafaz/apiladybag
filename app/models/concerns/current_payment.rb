module CurrentPayment

    private
  
    def set_payment(id)
        
        @payment = Payment.find_by_cart_id(id)
        if @payment.blank?
            @payment = Payment.new
            @payment.cart_id = id
            @payment.save
        end
        
    end
end