class CreatImageModule < ActiveRecord::Migration[5.2]
  def change
    create_table :image_modules do |t|
      t.references :object, polymorphic: true, index: true
      # t.belongs_to :image
      # t.belongs_to :article
      # t.belongs_to :release_number

      t.timestamps
      t.datetime :deleted_at
    end
  end
end
