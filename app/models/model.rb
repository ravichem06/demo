class Model < ApplicationRecord
	belongs_to :app
	belongs_to :user
	mount_uploader :file, ModelUploader
	
end
