class Comment < ApplicationRecord
    belongs_to :post
    belongs_to :user
    def can_change?(user)
        self.user == user || user.has_role?(:admin)
    end
end
