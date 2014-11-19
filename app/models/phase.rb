class Phase < ActiveRecord::Base
	extend FriendlyId
	belongs_to :tournoi
	friendly_id :name, :use => [:slugged, :finders]
end
