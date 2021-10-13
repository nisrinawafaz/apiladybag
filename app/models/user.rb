class User < ApplicationRecord
    
    has_secure_password
    self.primary_key = :id
    

    validates :email, presence: true
    validates :username, presence: true
end
