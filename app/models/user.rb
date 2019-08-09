class User < ApplicationRecord
  has_secure_password
  has_many :posts, :sessions
  validates :first_name, :last_name, presence: true

  def full_address
    ([number, street, zipcode, city, country].compact).join ', '
  end
end
