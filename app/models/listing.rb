class Listing < ActiveRecord::Base
	mount_uploader :feature_image, ImageUploader
end
