module Types
  class MutationType < Types::BaseObject

    # Creating a new User
    field :create_user, UserType, null: true,  description: "Create an User" do
       argument :user, Types::UserInputType, required: true
    end

    def create_user(user:)
      User.create user.to_h
    end   

    
    # Updating a User
    field :update_user, Boolean, null: false,  description: "Update an User" do
      argument :user, Types::UserInputType, required: true
   end

   def update_user(user:)
     existing = User.where(id: user[:id]).first
     existing&.update user.to_h
   end  

  end
end
