class Doctor < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Associations         
  belongs_to :doctor_category
  has_many :documents, :dependent => :destroy
  accepts_nested_attributes_for :documents
  # Validations
  validates :name, presence: true

  scope :active, -> { where(active: true) }
end
