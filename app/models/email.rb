class Email < ActiveRecord::Base
  belongs_to :employee
  validates :email, :presence => true#, :email => true
end
