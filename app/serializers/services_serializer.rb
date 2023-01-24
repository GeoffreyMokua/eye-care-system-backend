class ServicesSerializer < ActiveModel::Serializer
  attributes :id, :name, :img, :description, :doctor_id, :cost
  belongs_to :doctor
end
