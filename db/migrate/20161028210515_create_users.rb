class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :token
      t.boolean :admin
      t.string :bio
      t.string :video

      t.timestamps null: false
    end
  end
end
