class Survey < ActiveRecord::Base
  has_many :responses, :dependent => :destroy
end
