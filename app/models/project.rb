class Project < ApplicationRecord
	belongs_to :client
	belongs_to :user
	has_many :users
	has_many :apps
end
