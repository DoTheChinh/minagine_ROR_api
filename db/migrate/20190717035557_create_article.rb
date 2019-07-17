class CreateArticle < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      # t.belongs_to :user
      # t.belongs_to :release_number
      # t.belongs_to :category
      # t.has_many :image_modules, as: :object
      t.string :title
      t.integer :status
      t.date :post_date
      t.date :release_date
      t.text :content
      t.text :thumnail_image
      t.timestamps
      t.datetime :deleted_at
    end
  end
end
