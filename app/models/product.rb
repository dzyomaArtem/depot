class Product < ActiveRecord::Base
  belongs_to :category
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true

  mount_uploader :image, ImageUploader
end
