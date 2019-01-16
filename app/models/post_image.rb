class PostImage < ApplicationRecord

	# belongs_toはPostImageモデルからuser_idに紐づいてUserモデルを参照すること
	# PostImageモデルに紐付くのは1つのUserモデルなので単数形になる
    belongs_to :user

end