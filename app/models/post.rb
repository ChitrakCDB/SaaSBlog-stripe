class Post < ApplicationRecord
    validates :title, :content, presence: true
    scope :free, ->{where(premium: false)}
end
