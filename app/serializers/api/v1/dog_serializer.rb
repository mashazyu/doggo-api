class Api::V1::DogSerializer < ActiveModel::Serializer
  attributes :id, :name, :breed, :company

  def company
    object.company.name
  end

  def breed
    object.breed.name
  end
end
