class PatientSerializer < ActiveModel::Serializer
  attributes :id, :name, :born_on
end
