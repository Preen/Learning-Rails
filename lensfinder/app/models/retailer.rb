class Retailer < ActiveRecord::Base
  validates :title, :uniqueness => true
  belongs_to :user
  has_one :profile
  has_many :price, :dependent => :destroy
end
