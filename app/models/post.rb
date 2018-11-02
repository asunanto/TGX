class Post < ApplicationRecord
    has_many :comments
    belongs_to :user
    has_one_attached :image
    resourcify
  
    def price_in_cents
        (price * 100).to_i
    end
    
    def can_change?(user)
        self.user == user || user.has_role?(:admin)
    end
end
