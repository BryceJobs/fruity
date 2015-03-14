class Person < ActiveRecord::Base
	validates :first_name, presence:true, length: {in: 4..25}
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
end
