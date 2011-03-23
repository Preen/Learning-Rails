class Size < ActiveRecord::Base
  validates :size, :uniqueness => true, :numericality => true
  belongs_to :user
  has_many :price
end
