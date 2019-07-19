class Article < ApplicationRecord
    has_many :image_modules,  as: :object,  dependent: :destroy
    belongs_to :user, class_name: "user", foreign_key: "user_id"
    belongs_to :release_number, class_name: "release_number", foreign_key: "release_number_id"
    belongs_to :category, class_name: "category", foreign_key: "category_id"
end
