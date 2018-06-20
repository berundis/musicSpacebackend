class CreateVenues < ActiveRecord::Migration[5.1]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :profile_img
      t.string :city
      t.string :state
      t.string :genres
      t.string :email
      t.string :password_digest
      t.string :description
      t.string :profile_type
      t.timestamps
    end
  end
end
