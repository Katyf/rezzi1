class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :name
      t.string :src
      t.belongs_to :user, index: true
    end
    add_foreign_key :photos, :users
  end
end
