class Book < ApplicationRecord
  include SingletonTest
  attribute :description, :text, default: 'testtt'
  validates_acceptance_of :terms
  validates_presence_of :name , :sku , message: "should be present"
  validates_with SkuValidator
  before_save :validate_test



  private
  def validate_test
    Rails.logger.info("asdf")
    return false
  end
end
