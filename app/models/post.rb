class Post < ApplicationRecord
    has_many :comments
    belongs_to :user, optional: true #optional:true for rspec
    has_one_attached :image
    belongs_to :category, optional: true  
    has_one_attached :video

    #resourcify
    validates :product_name, :price, :location, :description, :presence => true

    def self.search(search)
        if search
            where(["product_name ILIKE ?","#{search}"])
        else
            all
        end
    end
  
    validates :price, numericality: { greater_than_or_equal_to: 0 }
    validates :location,:product_name, presence: true
    validates :sold, :flagged, inclusion: { in: [true, false] }
   
    def price_in_cents
        (price.round(2) * 100).to_i
    end
    
    def can_change?(user)
        self.user == user || user.has_role?(:admin)
    end
end
