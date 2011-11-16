class User < ActiveRecord::Base
	has_many :shoes
	has_many :runs
end
