class Post < ApplicationRecord
    has_many :comments
    belongs_to :user
    belongs_to :category
    has_one_attached :image    
    #resourcify
    validates :product_name, :price, :location, :description, :presence => true

  
    def price_in_cents
        (price * 100).to_i.round(2)
    end
    
    def can_change?(user)
        self.user == user || user.has_role?(:admin)
    end
end
