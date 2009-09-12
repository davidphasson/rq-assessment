class Question < ActiveRecord::Base
  belongs_to :category

  def category_name=(category_name)
    self.category = Category.find_or_create_by_name(category_name)
  end
end
