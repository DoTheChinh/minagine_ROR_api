class CreateReleaseNumber < ActiveRecord::Migration[5.2]
  def change
    create_table :release_numbers do |t|
      # t.has_many :articles
      # t.has_many :image_modules, as: :object
      t.date :release_date
      t.timestamps
      t.datetime :deleted_at
    end
  end
end
