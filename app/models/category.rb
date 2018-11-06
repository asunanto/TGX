class Category < ApplicationRecord
    has_many :posts

    def can_change?(user)
        self.user == user || user.has_role?(:admin)
    end
end
