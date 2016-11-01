class PostSerializer < ActiveModel::Serializer
  attributes :id, :name, :link, :final
  belongs_to :user
end
