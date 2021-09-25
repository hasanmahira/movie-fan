class CreateUserInterests < ActiveRecord::Migration[6.1]
  def change
    create_table :user_interests do |t|
      t.string :interest
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
