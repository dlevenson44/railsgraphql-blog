class User < ApplicationRecord
  has_many :posts
  validates :first_name, :last_name, presence: true

  def full_address
    ([number, street, zipcode, city, country].compact).join ', '
  end
end
