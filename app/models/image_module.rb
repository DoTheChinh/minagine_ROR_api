class ImageModule < ApplicationRecord
    belongs_to :image, class_name: "image", foreign_key: "image_id"
    belongs_to :object, polymorphic: true

    def object_type=(class_name)
        super(class_name.constantize.base_class.to_s)
     end
end
