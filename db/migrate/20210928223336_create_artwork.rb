class CreateArtwork < ActiveRecord::Migration[5.0]
  def change
    create_table :artworks do |t|
      t.string :medium # Watercolor, alcohol marker, colored pencil
      t.string :style #  Marginalia, photorealism, cubism, manga
      t.string :subject # Bird, human, mythical creature
      t.float :hours  # Hours spent working on it 
      t.belongs_to :gallery 
    end
  end
end
