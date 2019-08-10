class Types::UserInputType < GraphQL::Schema::InputObject
  graphql_name 'UserInputType'
  description 'All attributes to create a user'

  argument :id, ID, required: false
  argument :first_name, String, required: true
  argument :last_name, String, required: true
  argument :street, String, required: false
  argument :number, Int, required: false
  argument :city, String, required: false
  argument :zipcode, Int, required: false
  argument :country, String, required: false
  argument :email, String, required: false
  argument :password, String, required: false
  argument :admin, Boolean, required: false
end

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
  field :email, String, null: true
  field :password, String, null: true
  field :admin, Boolean, null: true

  # User's posts
  field :posts, [Types::PostType], null: false, description: 'Users posts'

  # Error field
  field :errors, [Types::ErrorType], null: true

  def errors
    object.errors.map { |e| { field_name: e, errors: object.errors[e] }}
  end

  # Only display this UserType in response if user is logged in
  # def self.visible?(context)
  #   !!context[:current_user] # add &.is_admin? to restrict to admin's only
  # end
end