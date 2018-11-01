class Post < ApplicationRecord
    has_many :comments
    belongs_to :user
    def price_in_cents
        (price * 100).to_i
    end
end
