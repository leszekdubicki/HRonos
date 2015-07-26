class Employee < ActiveRecord::Base
  has_many :emails
  has_many :vacation_requests
  has_one :user
  validates :first_name, presence: true
  validates :last_name, presence: true
  accepts_nested_attributes_for :emails
  accepts_nested_attributes_for :vacation_requests
  accepts_nested_attributes_for :user
  #attr_accessible :emails, :vacation_requests, :first_name, :last_name

end
