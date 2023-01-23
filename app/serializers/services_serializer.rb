class ServicesSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :description, :doctor_id, :cost
  belongs_to :doctor
end
