class User < ApplicationRecord
    VALID_EMAIL_REGEX = /[-+\.]*\w+@[\w-]+\.[a-z0-9]/
    validates :email, format: {with: VALID_EMAIL_REGEX}
    validates :name, presence: true, length: {maximum: 50}
    has_many :microposts, dependent: :destroy
end
