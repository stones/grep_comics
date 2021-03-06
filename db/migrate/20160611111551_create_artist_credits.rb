class CreateArtistCredits < ActiveRecord::Migration[5.0]
  def change
    create_table :artist_credits do |t|
      t.references :creator, foreign_key: true
      t.references :comic, foreign_key: true

      t.timestamps
    end
  end
end
