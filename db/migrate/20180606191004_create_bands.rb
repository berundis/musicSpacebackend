class CreateBands < ActiveRecord::Migration[5.1]
  def change
    create_table :bands do |t|
      t.string :name
      t.string :profile_img
      t.string :city
      t.string :state
      t.string :bio
      t.string :genre
      t.string :email
      t.string :password_digest
      t.string :profile_type
      t.timestamps
    end
  end
end
