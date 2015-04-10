class Place < ActiveRecord::Base
	belongs_to :user
	validates :name, :address, :description, :presence => true
	validates :name, length: { minimum: 3 }
	validates :description, length: { minimum: 15, maximum: 1000 }
end
