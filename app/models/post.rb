class Post < ApplicationRecord
    has_many :comments
    belongs_to :user, optional: true #optional:true for rspec
    has_one_attached :image

    validates :product_name, length: {minimum: 5}
    validates :price, numericality: { only_integer: true }
    validates :location, length: {minimum: 1}
    validates :sold, :flagged, absence: true 
  
    def price_in_cents
        (price * 100).to_i
    end
    
    def can_change?(user)
        self.user == user || user.has_role?(:admin)
    end
end
