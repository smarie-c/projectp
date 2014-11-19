class Suscribers < ActiveRecord::Base
	belongs_to :user
	belongs_to :tournoi
end
