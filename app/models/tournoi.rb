class Tournoi < ActiveRecord::Base
	extend FriendlyId
	belongs_to :user
	has_many :phase
	friendly_id :name, :use => [:slugged, :finders]
end
