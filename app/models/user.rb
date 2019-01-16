class User < ApplicationRecord
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	# has_manyの後には1:Nの関係になるモデル名の複数形を記述
    has_many :post_images, dependent: :destroy

end