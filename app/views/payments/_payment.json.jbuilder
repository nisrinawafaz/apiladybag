json.extract! payment, :id, :id, :user_id, :fullname, :country, :city, :district_id, :address, :phone, :cart_id, :subtotal, :total, :status_id, :created_at, :updated_at
json.url payment_url(payment, format: :json)
