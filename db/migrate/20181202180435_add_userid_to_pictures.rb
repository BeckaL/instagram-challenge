class AddUseridToPictures < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :pictures, :users
  end
end
