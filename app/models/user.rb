class User < ActiveRecord::Base
	has_many :articles
	validates :username, :password, presence: true
	validates :username, :password, uniqueness: true
	validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, on: :create }
	# validates :password, presence: true

end
