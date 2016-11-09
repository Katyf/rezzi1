class UserSerializer < ActiveModel::Serializer
  attributes :name, :email, :token, :admin, :bio
  has_many :photos
  has_many :videos

end

