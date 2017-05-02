class Doctor < ApplicationRecord
  # one-to-many
  has_many :primary_care_recipients, class_name: 'Patient'

  # many-to-many
  has_many :appointments, dependent: :destroy
  has_many :patients, through: :appointments

  # validation
  validates :given_name, presence: true
  validates :family_name, presence: true

end
