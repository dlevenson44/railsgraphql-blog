class Types::ErrorType < Types::BaseObject
  description 'An ActiveRecord Error'

  field :field_name, String, null: false
  field :errors, [String], null: false
end
