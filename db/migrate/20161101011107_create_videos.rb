class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :name
      t.string :src
      t.boolean :final
      t.belongs_to :user, index: true
    end
    add_foreign_key :videos, :users
  end
end
