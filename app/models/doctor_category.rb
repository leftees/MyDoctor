class DoctorCategory < ActiveRecord::Base
  
  # Associations
  has_many :doctors
  validates :name, presence: true
  validates_format_of :name, :with => /\A[^0-9`!@#\$%\^&*+_=]+\z/

end
