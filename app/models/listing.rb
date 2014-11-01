class Listing < ActiveRecord::Base
	mount_uploader :feature_image, ImageUploader

	belongs_to :user

	scope :publish,-> {  where(state: :publish).limit(10) }

	state_machine :state, initial: :unpublished do
		event :publish do
			transition :unpublished => :publish
		end

		event :unpublish do
			transition :publish => :unpublished
		end
	end
end
