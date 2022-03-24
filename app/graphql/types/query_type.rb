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
    field :logout, Boolean, null: false, description: "Logout a user"

    def logout 
      Session.where(id: context[:session_id]).destroy_all
      true
    end


    #List of Movies
    field :movie_list, [Types::MovieType], null:true, description: "Listing of a all movies in database" do
      #argument :max_result_count, Int, required: true
      argument :page_number, Int, required: true
      argument :page_size, Int, required: true
    end

    def movie_list(page_number:, page_size:)
      skip_count = page_number * page_size
      Movie.all.offset(skip_count).limit(page_size)
    end

    
    #List of Movie Genres
    field :movie_genre_list, [Types::MovieGenreType], null:true, description: "Listing of a all movie genres in database"

    def movie_genre_list
      MovieGenre.all
    end


    
    #List of Stars
    field :star_list, [Types::StarType], null:true, description: "Listing of a all actors and actresses in database" do
      argument :page_number, Int, required: true
      argument :page_size, Int, required: true
    end

    def star_list(page_number:, page_size:)
      skip_count = page_number * page_size
      Star.all.offset(skip_count).limit(page_size)
    end

  end
end
