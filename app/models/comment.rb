class Comment < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :event
  belongs_to :temperature

  mount_uploader :image, ImageUploader
end
