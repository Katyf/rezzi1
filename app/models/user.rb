class User < ActiveRecord::Base
  has_secure_password

  before_create :set_token
  has_many :videos
  has_many :photos

  private
    def set_token
      return if token.present?
      self.token = generate_token
    end

    def generate_token
      SecureRandom.uuid.gsub(/\-/,'')
    end
end
