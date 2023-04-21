class User < ApplicationRecord
    VALID_EMAIL_REGEX = ^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$
    Validates :email, format: {with: VALID_EMAIL_REGEX}
    Validates :name, presence: true, length: {maximum: 50}
    has_many :Micropost, dependent: :destroy
end
