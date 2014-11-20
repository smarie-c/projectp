class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :tournoi, dependent: :destroy
  has_many :admin, dependent: :destroy
  has_many :suscriber, dependent: :destroy
end
