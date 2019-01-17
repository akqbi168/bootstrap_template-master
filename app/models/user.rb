class User < ApplicationRecord
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	# has_manyの後には1:Nの関係になるモデル名の複数形を記述
    # dependent: :destroyは、1:Nの関係の1のデータが削除されると関連するNのデータも削除される設定
    has_many :post_images, dependent: :destroy
	has_many :post_comments, dependent: :destroy
	has_many :favorites, dependent: :destroy

	attachment :profile_image

end