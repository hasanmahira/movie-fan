# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

   users = User.create([
        { 
        user_name: 'mates', 
        first_name: 'Mahir' , 
        surname: "Ates",
        email: "mates@gmail.com",
        password: "123",
        yob: "24/07/1996"
        }
    ])


    user_interests = UserInterest.create([
        {
         interest: "Movie",
         user:users.first
        }
    ])
  
  
