class CategoryValidator < ActiveModel::EachValidator

  def validate_each(record, attribute, value)
    if !["fiction", "non-fiction"].include?(value.downcase)
      record.errors[attribute] << (options[:message] || "not in categories")
    end
  end
  
end
