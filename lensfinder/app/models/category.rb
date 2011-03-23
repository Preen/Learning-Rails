class Category < ActiveRecord::Base
  validates :name, :uniqueness => true
  belongs_to :user
  has_and_belongs_to_many :products
end
