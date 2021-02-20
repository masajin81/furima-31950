class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :condition
  belongs_to :delivery_fee
  belongs_to :prefecture
  belongs_to :shipping_day

  belongs_to :user
  has_one_attached :image

  with_options, numericality: { other_than: 1 } do
    validates :category
    validates :condition
    validates :delivery_fee
    validates :prefecture
    validates :shipping_day
  end

  with_options presence: true do
    validates :name
    validates :description
    validates :image
    validates :price
  end

end
