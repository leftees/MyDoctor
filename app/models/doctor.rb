class Doctor < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Associations         
  belongs_to :doctor_category

  # Validations
  validates :name, :age, presence: true

  scope :active, -> { where(active: true) }
end
