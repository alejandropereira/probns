class PagesController < ApplicationController
	layout 'front'

	def home
		@listings = Listing.all
	end
end
