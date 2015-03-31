class PlacesController < ApplicationController
	def index
		@places = Place.order("name")

		@places = Kaminari.paginate_array(@places).page(params[:page]).per(1)
	end
end
