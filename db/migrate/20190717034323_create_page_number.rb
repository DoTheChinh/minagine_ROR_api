class CreatePageNumber < ActiveRecord::Migration[5.2]
  def change
    create_table :page_numbers do |t|
      t.string :controller_name
      t.integer :per_page
      t.timestamps
      t.datetime :deleted_at
    end
  end
end
