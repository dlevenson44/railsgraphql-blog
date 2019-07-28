class User < ApplicationRecord
  has_many :posts

  def full_address
    ([number, street, zipcode, city, country].compact).join ', '
  end
end
