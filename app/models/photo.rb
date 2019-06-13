class Photo < ApplicationRecord
	enum sharing_mode: {public_photo: 1, private_photo: 0}

	belongs_to :user
	belongs_to :album
end
