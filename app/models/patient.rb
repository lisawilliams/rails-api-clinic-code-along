class Patient < ApplicationRecord
  # class_name refers to the class Doctor in /models/doctor.rb
  belongs_to :primary_care_physician, class_name: 'Doctor', foreign_key: 'doctor'
end
