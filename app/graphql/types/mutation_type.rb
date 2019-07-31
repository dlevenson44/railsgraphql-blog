module Types
  class MutationType < Types::BaseObject
        # TODO: remove me
    field :test_field, String, null: false,
    description: "An example field added by the generator"
    def test_field
      "Hello World"
    end
  
    field :user, String, null: false, description: 'The user field'
    def user
      'Hello user'
    end

    field :create_user, UserType, null: true, description: 'Create a user' do
      argument :user, Types::UserInputType, required: true
    end

    def create_user(user:)
      User.create user.to_h
    end

    field :update_user, Boolean, null: false, description: 'Update user' do
      argument :user, Types::UserInputType, required: true
    end

    def update_user(user:)
      existing = User.where(id: user[:id]).first
      existing.update user.to_h
    end

    field :delete_user, Boolean, null: false, description: 'Delete user' do
      argument :id, ID, required: true
    end

    def delete_user(id:)
      User.where(id: id).destroy_all
      true
    end

    field :post, String, null: false, description: 'The post field'
    def post
      'hello post'
    end

    field :create_post, PostType, null: true, description: 'Create a post' do
      argument :post, Types::PostInputType, required: true
    end

    def create_post(post:)
      Post.create post.to_h
    end

    field :update_post, Boolean, null: false, description: 'Update post' do
      argument :post, Types::PostInputType, required: true, description: 'all attributes to update post'
    end

    def update_post(post:)
      existing = Post.where(id: post[:id]).first
      existing.update post.to_h
    end

    field :delete_post, Boolean, null: false, description: 'delete post' do
      argument :id, ID, required: true
    end

    def delete_post(id:)
      Post.where(id: id).destroy_all
    end

    field :comment, String, null: false, description: 'The comment field'
    def comment
      'hello comment'
    end

    field :create_comment, CommentType, null: true, description: 'Create a comment' do
      argument :comment, Types::CommentInputType, required: true
    end

    def create_comment(comment:)
      Comment.create comment.to_h
    end

    field :update_comment, Boolean, null: false, description: 'Update comment' do
      argument :comment, Types::CommentInputType, required: true, description: 'all attributes to update comment'
    end

    def update_comment(comment:)
      existing = Comment.where(id: comment[:id]).first
      existing.update comment.to_h
    end

    field :delete_comment, Boolean, null: false, description: 'delete comment' do
      argument :id, ID, required: true
    end

    def delete_comment(id:)
      Comment.where(id: id).destroy_all
    end
  end
end
