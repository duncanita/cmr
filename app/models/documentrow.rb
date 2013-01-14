class Documentrow < ActiveRecord::Base
  attr_accessible :description, :number_of_package, :volume, :weight

  belong_to :document
  has_one :packaging
end
