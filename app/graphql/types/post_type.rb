class Types::PostInputType < GraphQL::Schema::InputObject
  graphql_name 'PostInputType'
  description 'All attributes to create a post'

  argument :id, ID, required: false, description: 'Post ID'
  argument :user_id, ID, required: false, description: 'ID of user who created post'
  argument :body, String, required: false, description: 'Body of post'
end

class Types::PostType < Types::BaseObject
  description 'A post'

  field :id, ID, null: false
  field :user, Types::UserType, null: false, description: 'author of post'
  field :body, String, null: true

  # Post's comments
  field :comments, [Types::CommentType], null: true, description: 'Posts comments'

  # Error field
  field :errors, [Types::ErrorType], null: true

  def errors
    object.errors.map { |e| { field_name: e, errors: object.errors[e] }}
  end
end
