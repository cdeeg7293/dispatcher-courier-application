class Job < ActiveRecord::Base
  belongs_to :client
  PAYMENTTYPES = ['Cash', 'Credit']
end
