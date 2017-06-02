class DoctorSerializer < ActiveModel::Serializer
  attributes :id, :given_name, :family_name, :gender, :specialty
end
