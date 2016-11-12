class AddArtistToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :artist, :string
  end
end
