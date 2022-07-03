class SkuValidator < ActiveModel::Validator

  def validate(record)
    if record.sku.present? && record.sku.starts_with?("t")
      errors.add(:sku,"not a valid one")
    end
  end

end