class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :first_name
      t.string :surname
      t.string :email
      t.string :password
      t.string :yob

      t.timestamps
    end
  end
end