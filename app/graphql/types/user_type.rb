class Types::UserType < Types::BaseObject
  description 'a single user'

  field :id, ID, null: false
  field :first_name, String, null: true
  field :last_name, String, null: true
  field :street, String, null: true
  field :number, Integer, null: true
  field :city, String, null: true
  field :zipcode, Integer, null: true
  field :country, String, null: true
  field :full_address, String, null: true

  field :posts, [Types::PostType], null: false, description: 'Users posts'
end