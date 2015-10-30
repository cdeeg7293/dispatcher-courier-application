class Job < ActiveRecord::Base
  belongs_to :client
  belongs_to :board
  has_many :fees
  has_many :services
  PAYMENTTYPES = ['Cash', 'Credit']
end
