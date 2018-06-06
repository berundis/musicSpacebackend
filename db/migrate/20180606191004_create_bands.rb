class CreateBands < ActiveRecord::Migration[5.1]
  def change
    create_table :bands do |t|
      t.string :name
      t.string :profile_img
      t.string :location
      t.string :bio
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
