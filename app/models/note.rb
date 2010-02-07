class Note < ActiveRecord::Base
  has_and_belongs_to_many :tags
  accepts_nested_attributes_for :tags
end
