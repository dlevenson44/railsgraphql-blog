module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      Rails.logger.info context[:time]
      "Hello World!"
    end

    field :user, Types::UserType, null: true, description: 'One user' do
      argument :id, ID, required: true
    end

    def user(id:)
      User.where(id: id).first
    end
  end
end
