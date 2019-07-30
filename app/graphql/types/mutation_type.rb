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

    def update_author(user:)
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

    field :comment, String, null: false, description: 'The comment field'
    def comment
      'hello comment'
    end
  end
end
