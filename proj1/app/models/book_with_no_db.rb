class BookWithNoDb
  include ActiveModel::Model
  attr_accessor :sku,:name,:description

  validates_presence_of :name

  def persisted?
    false
  end

end