class App < ApplicationRecord
	belongs_to :project
	belongs_to :user
	has_many :users

end
