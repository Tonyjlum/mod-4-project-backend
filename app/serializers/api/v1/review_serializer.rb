class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :chef_id, :rating, :comment
end
