module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World"
    end
    field :user, String, null: false,
      description: 'The user field'
    def user
      'Hello user'
    end
    field :post, String, null: false,
      description: 'The post field'
    def post
      'hello post'
    end
  end
end
