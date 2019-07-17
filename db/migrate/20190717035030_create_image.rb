class CreateImage < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      # t.has_many :image_modules
      t.string :name
      t.text :url
      t.timestamps
      t.datetime :deleted_at
    end
  end
end
