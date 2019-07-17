class CreateCategory < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      # t.has_many :articles
      t.string :name
      t.integer :display_method
      t.integer :parent_id, index: true

      t.timestamps
      t.datetime :deleted_at
    end
  end
end
