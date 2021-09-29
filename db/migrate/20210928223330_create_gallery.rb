class CreateGallery < ActiveRecord::Migration[5.0]
  def change
    create_table :galleries do |t|
      t.string :name 
      t.string :description 
      t.belongs_to :user
    end
  end
end
