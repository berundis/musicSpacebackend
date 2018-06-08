class CreateShows < ActiveRecord::Migration[5.1]
  def change
    create_table :shows do |t|
      t.string :name
      t.string :flyer
      t.integer :venue_id
      t.timestamps
    end
  end
end
