class Document < ActiveRecord::Base
  attr_accessible :instructions, :number

  belong_to :user
  has_many :documentrow
end