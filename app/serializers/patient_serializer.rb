class PatientSerializer < ActiveModel::Serializer
  attributes :id, :name, :primary_care_physician,:doctors
end
