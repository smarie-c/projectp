class Tournoi < ActiveRecord::Base
	belongs_to :user
	has_many :phase
end
