class Good < ActiveRecord::Base
  attr_accessible :description

  validate :description, :presence => true
end
