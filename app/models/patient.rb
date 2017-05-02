class Patient < ApplicationRecord
  # one-to-many
  belongs_to :primary_care_physician,
             class_name: 'Doctor', foreign_key: 'doctor_id'

  # many-to-many
  has_many :appointments, dependent: :destroy
  has_many :doctors, through: :appointments

  # validation
  validates :name, presence: true
  validates :born_on, presence: true

end
