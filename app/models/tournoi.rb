class Tournoi < ActiveRecord::Base
	extend FriendlyId
	belongs_to :user
	has_many :phase, dependent: :destroy
	has_many :admin, dependent: :destroy
	has_many :role, dependent: :destroy
	friendly_id :name, :use => [:slugged, :finders]
end
