class Types::CommentInputType < GraphQL::Schema::InputObject
  graphql_name 'CommentInputType'
  description 'All attributes in a comment'

  argument :id, ID, required: false, description: 'Comment ID'
  argument :post_id, ID, required: false, description: 'ID of post that hosts comment'
  argument :body, String, required: false, description: 'Body of comment'
end

class Types::CommentType < Types::BaseObject
  description 'a single comment'

  field :id, ID, null: false
  field :post, Types::PostType, null: false, description: 'post comment belongs to'
  field :body, String, null: true
end
