class Mutations::CreateUser < GraphQL::Schema::Mutation 
    null true

    argument :id, ID, required: false
    argument :user_name, String, {required: true, camelize: false }   
    argument :first_name, String, {required: true, camelize: false }   
    argument :surname, String, {required: true, camelize: false }   
    argument :email, String, {required: true, camelize: false }   
    argument :password_digest, String, {required: true, camelize: false }   
    argument :yob, String, {required: true, camelize: false }   

    def resolve(user_name:, first_name:, surname:, email:, password_digest:, yob:)
        User.create user_name:user_name, first_name: first_name, surname:surname,
        email:email, password_digest:password_digest, yob:yob
    end
end