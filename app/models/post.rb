class Post < ApplicationRecord
    has_many :comments
    belongs_to :user
    has_one_attached :image
    def can_change?(user)
        self.user == user 
    end
end
