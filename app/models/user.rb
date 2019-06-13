class EmailValidator < ActiveModel::EachValidator
	def validate_each(record, attribute, value)
		unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
			record.errors[attribute] << (options[:message] || "is not an email")
		end
	end
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	validates :first_name, :last_name, length: { maximum: 25 }, presence: true
	validates :password, length: { maximum: 64 }, presence: true
	validates :email, uniqueness: true, email: true, presence: true

	has_many :albums
	has_many :photos
end
