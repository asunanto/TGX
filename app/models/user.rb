class User < ApplicationRecord
  rolify

  after_create :assign_default_role
  def assign_default_role
    self.add_role(:basic) if self.roles.blank?
  end

  has_many :posts
  has_many :comments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable       
end
