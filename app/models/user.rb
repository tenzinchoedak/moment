class User < ApplicationRecord
    before_save { email.downcase! }
    validates :name, presence: true, length: { maximum: 50 }
    VALID_ENAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 },
                      format: { with: VALID_ENAIL_REGEX },
                      uniqueness: true
    has_secure_password
    validates :password, presence: true,length: { minimum: 6 }
end
