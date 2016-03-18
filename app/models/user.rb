class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_attached_file :avatar, style: {mediun:"300x300#", thum:"100x100#"}
  validates_attachment_content_type :avatar,content_type: ["image/jpg", "image/jpeg", "image/png"]
  validates :nickname, presence: true
  validates :avatar, presence: true
  has_many :reviews
end
