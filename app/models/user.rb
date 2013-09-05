class User < ActiveRecord::Base
  devise :database_authenticatable, :rememberable, :trackable

  validates :email, presence: true, uniqueness: true
end
