class Admin < ActiveRecord::Base
	belongs_to :user
	belongs_to :tournoi
end
