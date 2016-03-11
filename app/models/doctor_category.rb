class DoctorCategory < ActiveRecord::Base
  
  # Associations
  has_many :doctors

end
