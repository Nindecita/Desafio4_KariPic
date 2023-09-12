class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
  enum :role, [:user, :admin]
  has_many :comments, dependent: :destroy  
  has_many :galleries, dependent: :destroy
  has_one_attached :user_avatar
end
