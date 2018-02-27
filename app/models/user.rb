class User < ApplicationRecord
  has_many :bubbles
    has_secure_password
end
