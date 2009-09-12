class Question < ActiveRecord::Base
  belongs_to :category

  def category_title=(category_title)
    self.category = Category.find_or_create_by_title(category_title)
  end
end
