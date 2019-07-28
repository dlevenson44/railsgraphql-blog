class Types::CommentType < Types::BaseObject
  description 'a single comment'

  field :id, ID, null: false
  field :body, String, null: true
end
