class Shoe < ActiveRecord::Base
	has_many :runs
	belongs_to :user
end
