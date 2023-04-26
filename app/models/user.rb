class User < ApplicationRecord
    VALID_EMAIL_REGEX = /[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+/i
    validates :email, format: {with: VALID_EMAIL_REGEX}
    validates :name, presence: true, length: {maximum: 50}
    has_many :microposts, dependent: :destroy
end
