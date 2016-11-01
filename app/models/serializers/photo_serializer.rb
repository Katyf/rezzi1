class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :name, :link
  belongs_to :user
end
