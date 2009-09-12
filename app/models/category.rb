class Category < ActiveRecord::Base
  has_many :questions

  validates_uniqueness_of :name
end
