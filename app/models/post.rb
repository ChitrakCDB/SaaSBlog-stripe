class Post < ApplicationRecord
    validates :title, :content, presence: true
    scope :free, ->{where(premium: false)}
    has_one_attached :header_image
    has_many_attached :files
    belongs_to :user
end
