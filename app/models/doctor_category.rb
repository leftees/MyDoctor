class DoctorCategory < ActiveRecord::Base
  
  # Associations
  has_many :doctors
  validates :name, presence: true
  validates_format_of :name, :with => /\A[^0-9`!@#\$%\^&*+_=]+\z/


  has_attached_file :avatar, styles: { large: "520x520>", medium: "300x300>", small: "256x256>", thumb: "100x100>", tiny: "50x50>" }, default_url: ":style/missing_avatar.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

end
