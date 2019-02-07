class Api::V1::ChefSerializer < ActiveModel::Serializer
  attributes :id, :name, :specialty, :price, :rating, :profile_picture_url
end
