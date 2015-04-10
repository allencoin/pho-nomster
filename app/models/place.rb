class Place < ActiveRecord::Base
	belongs_to :user
	geocoded_by :address
	after_validation :geocode

	validates :name, :address, :description, :presence => true
	validates :name, length: { minimum: 3 }
	validates :description, length: { minimum: 15, maximum: 1000 }
end
