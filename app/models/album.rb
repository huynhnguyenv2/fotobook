class Album < ApplicationRecord
	enum sharing_mode: {public_album: 1, private_album: 0}
	has_many :photos
end
