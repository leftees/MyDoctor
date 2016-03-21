class Doctor < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Associations         
  belongs_to :doctor_category
  has_many :doccuments, :dependent => :destroy

  # Validations
  #validates :name, :age, :phone_number, presence: true
  accepts_nested_attributes_for :doccuments

  scope :active, -> { where(active: true) }
end
