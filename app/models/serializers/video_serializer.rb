class VideoSerializer < ActiveModel::Serializer
  attributes :id, :name, :src, :final
  belongs_to :user
end
