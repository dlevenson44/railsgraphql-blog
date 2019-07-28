class Types::PostType < Types::BaseObject
  description 'A post'

  field :id, ID, null: false
  field :body, String, null: true

  field :comments, [Types::CommentType], null: false, description: 'Posts comments'
end
