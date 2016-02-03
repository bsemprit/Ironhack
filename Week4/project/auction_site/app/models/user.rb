class User < ActiveRecord::Base
	validates :email, uniqueness: true, presence: true
	has_many :products, dependent: :destroy
end
