class Post < ApplicationRecord
    has_many :comments
    belongs_to :user, optional: true #optional:true for rspec
    has_one_attached :image
    belongs_to :category   
    has_one_attached :video
  
    validates :price, numericality: { only_integer: true }
    validates :location,:product_name, presence: true
    validates :sold, :flagged, inclusion: { in: [true, false] }
   
    def price_in_cents
        (price.round(2) * 100).to_i
    end
    
    def can_change?(user)
        self.user == user || user.has_role?(:admin)
    end
end
