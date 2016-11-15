class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :name, :src
  belongs_to :user
end
