class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one :address

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, :name_kana, :admin, presence: true
end
