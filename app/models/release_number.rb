class ReleaseNumber < ApplicationRecord
    has_many :articles
    has_many :image_modules, as: :object,  dependent: :destroy
end
