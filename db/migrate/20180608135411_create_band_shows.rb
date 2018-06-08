class CreateBandShows < ActiveRecord::Migration[5.1]
  def change
    create_table :band_shows do |t|
      t.integer :band_id 
      t.integer :show_id
      t.timestamps
    end
  end
end
