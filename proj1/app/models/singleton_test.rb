module SingletonTest
  extend ActiveSupport::Concern

  included do
    has_many :book_racks
  end

  module ClassMethods
    def class_met
      "ttt"
    end
  end

  def instance_met
    "asdf"
  end

end