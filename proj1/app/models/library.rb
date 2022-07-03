class Library < ActiveRecord::Base
  has_many :book_racks
  has_many :books , through: :book_racks
  self.inheritance_column = 'dummy'
end