module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    # field :test_field, String, null: false,
    #   description: "An example field added by the generator"
    # def test_field
    #   "Hello World!"
    # end


    # User Login
    field :login, String, null: true, description: "Login a user" do
      argument :email, String, required: true
      argument :password, String, required: true
    end

    def login(email:, password:)
      if user = User.where( email: email).first&.authenticate(password)
       user.sessions.create.key
      end
    end

    #Shows current user
    field :current_user, Types::UserType, null: true, description: "The currently logged in user"
    
    def current_user 
      context[:current_user]
    end


    #User logout
    field :logout, Boolean, null: false

    def logout 
      Session.where(id: context[:session_id]).destroy_all
      true
    end

  end
end
