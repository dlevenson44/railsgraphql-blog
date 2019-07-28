class User < ApplicationRecord
  def full_address
    ([number, street, zipcode, city, country].compact).join ', '
  end
end
