class Patient < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable, :confirmable,
  devise :database_authenticatable, :registerable, 
         :recoverable, :rememberable, :trackable, :validatable

         validates :name, :age, :phone_number, presence: true

  has_attached_file :avatar, styles: { large: "520x520>", medium: "300x300>", small: "256x256>", thumb: "100x100>" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
