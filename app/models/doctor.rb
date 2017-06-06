class Doctor < ApplicationRecord
  # class_name refers to the class Patient in /models/patient.rb
  has_many :primary_care_recipients, class_name: 'Patient'
end
