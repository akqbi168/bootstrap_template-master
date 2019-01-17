class PostImage < ApplicationRecord
	attachment :image
	# belongs_toはPostImageモデルからuser_idに紐づいてUserモデルを参照すること
	# PostImageモデルに紐付くのは1つのUserモデルなので単数形になる
	belongs_to :user
	attachment :image   #_idは含めない
	has_many :favorites, dependent: :destroy
	has_many :post_comments, dependent: :destroy

	validates :shop_name, presence: true
	validates :image, presence: true

	def favorited_by?(user)
		favorites.where(user_id: user.id).exists?
	end
end