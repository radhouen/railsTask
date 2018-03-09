class Tag < ApplicationRecord
  has_and_belongs_to_many :articles
  has_many :sub_tags, class_name: "Tag", foreign_key: "sub_class_id"
  belongs_to :tag
end
