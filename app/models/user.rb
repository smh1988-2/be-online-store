class User < ApplicationRecord
    has_secure_password

    has_many :purchases
    has_many :products, through: :purchases

    # validates :username, presence: true, uniqueness: true
    # validates :email, presence: true, uniqueness: true, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/
    # validates :password, length: { in: 3..20, message: "Password should be between 3 and 20 characters." }

    
end
