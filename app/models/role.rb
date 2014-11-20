class Role < ActiveRecord::Base
	belongs_to :user
	has_many :suscribers, dependent: :destroy
end
