class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # deviseの後ろにあるコロンから始まるもの↑はdeviseの機能名

  has_many :post_images, dependent: :destroy

end
