class Survey < ActiveRecord::Base
  has_many :responses, :dependent => :destroy

  accepts_nested_attributes_for :responses

end
