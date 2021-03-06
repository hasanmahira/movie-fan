class Types::UserInputType < GraphQL::Schema::InputObject
    graphql_name "UserInputType"
    description "All teh attributes for creating User"

    argument :id, ID, required: false
    argument :user_name, String, {required: true, camelize: false }   
    argument :first_name, String, {required: true, camelize: false }   
    argument :surname, String, {required: true, camelize: false }   
    argument :email, String, {required: true, camelize: false }   
    argument :password_digest, String, {required: true, camelize: false }   
    argument :yob, String, {required: true, camelize: false }   
end

class Types::UserType < Types::BaseObject
    description "A User"

    field :id, ID, null: true
    field :email, String, null: true
    #field: is_superadmin, Boolean, null: true, camelize: false
end
