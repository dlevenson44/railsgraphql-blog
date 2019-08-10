module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # Authentication/User
    # Login
    field :login, String, null: true, description: 'Log a user in' do
      argument :email, String, required: true
      argument :password, String, required: true
    end

    def login(email:, password:)
      if user = User.where(email: email).first&.authenticate(password)
        user.sessions.create.key
      end
    end

    # Current user
    field :current_user, Types::UserType, null: true, description: 'logged in user'

    def current_user
      context[:current_user]
    end

    # Logout
    # REMEMBER-- SEND SESSION KEY AS HEADER
    field :logout, Boolean, null: false

    def logout
      Session.where(id: context[:session_id]).destroy_all
      true
    end

    # Find specific user
    field :user, Types::UserType, null: true, description: 'One user' do
      argument :id, ID, required: true
    end

    def user(id:)
      User.where(id: id).first
    end

    # Find specific post
    field :post, Types::PostType, null: true, description: 'One post' do
      argument :id, ID, required: true
    end

    def post(id:)
      Post.where(id: id).first
    end

    # Find specific comment
    field :comment, Types::CommentType, null: true, description: 'One comment' do
      argument :id, ID, required: true
    end

    def comment(id:)
      Comment.where(id: id).first
    end
  end
end
