# require 'bcrypt'

class User < ActiveRecord::Base
	# include BCrypt

	has_many :articles
	validates :username, presence: true
	validates :username, uniqueness: true
	validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, on: :create }
	# validates :password, presence: true
	has_secure_password


  	def password
  		@password ||= BCrypt::Password.new(password_digest)
  	end

	def password=(new_password)
	  @password = BCrypt::Password.create(new_password)
	  self.password_digest = @password
	end
  
end
