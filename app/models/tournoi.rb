class Tournoi < ActiveRecord::Base
	extend FriendlyId
	belongs_to :user
	has_many :phase
	has_many :admin
	has_many :suscriber
	friendly_id :name, :use => [:slugged, :finders]
end
